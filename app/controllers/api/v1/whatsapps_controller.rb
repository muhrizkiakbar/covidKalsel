class Api::V1::WhatsappsController < ActionController::Base
    skip_before_action :verify_authenticity_token
    def post_api

        case params["query"]["message"].upcase
        when "A"
            angka_sebaran
        when "B"
            rumah_sakit
        when "C"
            contact_dinkes
        when "D"
            contact_bpbd
        when "E"
            kode_kota
        else
            pilih_kota(params["query"]["message"])
        end    

        render json: {
            replies: [
                    @text
                ],
        }, status: :ok
    end

    private

    def angka_sebaran
        @cov_positive_count = City.sum('cov_positive_count')
        @cov_odp_count = City.sum('cov_odp_count')
        @cov_pdp_count = City.sum('cov_pdp_count')
        @cov_died_count = City.sum('cov_died_count')
        @cov_recovered_count = City.sum('cov_recovered_count')
        @cov_positive_total = @cov_positive_count + @cov_died_count + @cov_recovered_count
        @cities = City.all
        @city_last_updated = @cities.order("updated_at DESC").first
        
        return @text = { "message" => "Angka Sebaran di Kalimantan Selatan \nTotal Positif (Dirawat, Meninggal, Sembuh) : #{@cov_positive_total} \nDirawat : #{@cov_positive_count} \nSembuh : #{@cov_recovered_count} \nMeninggal : #{@cov_died_count} \nODP : #{@cov_odp_count} \nPDP : #{@cov_pdp_count }\n"}
    end

    def rumah_sakit
        hospitals = Hospital.where('is_primary = true')
    
        text = "Daftar Rumah Sakit Rujukan :\n"
    
        hospitals.each_with_index do |hospital,i|
          text = text + "- #{hospital.name_hospital} di #{hospital.city.name}  (#{hospital.phone_number})\n"
        end
    
        return @text = { "message" => text }
    end

    def contact_dinkes
        return @text = { "message" => "Hubungi Call Center Dinas Kesehatan Prov. Kalsel di 082157718673/082157718672." }
    end

    def contact_bpbd
        return @text = { "message" =>  "Hubungi Call Center Badan Penanggulangan Bencana Daerah Prov. Kalsel di 05115911968/08115004474."}
    end

    def kode_kota
        return @text = { "message" => "Pilih Kota/Kab. dibawah untuk mengetahui angka sebaran. \n1. Kabupaten Tabalong\n2. Kabupaten Hulu Sungai Utara\n3. Kota Banjarmasin\n4. Kabupaten Barito Kuala\n5. Kabupaten Balangan\n6. Kota Banjarbaru\n7. Kabupaten Tanah Bumbu\n8. Kabupaten Kotabaru\n9. Kabupaten Hulu Sungai Selatan\n10. Kabupaten Banjar\n11. Kabupaten Hulu Sungai\n12. Kabupaten Tapin\n13. Kabupaten Tanah Laut"}
    end

    def pilih_kota(param)
        case param
        when "1"
            kode = "TBL"
            kota = "Kab. Tabalong"
        when "2"
            kode = "HSU"
            kota = "Kab. Hulu Sungai Utara"
        when "3"
            kode = "BJM"
            kota = "Kota Banjarmasin"
        when "4"
            kode = "BTL"
            kota = "Kab. Batola"
        when "5"
            kode = "BLG"
            kota = "Kab. Balangan"
        when "6"
            kode = "BJB"
            kota = "Kota Banjarbaru"
        when "7"
            kode = "TBU"
            kota = "Kab. Tanah Bumbu"
        when "8"
            kode = "KTB"
            kota = "Kab. Kotabaru"
        when "9"
            kode = "HSS"
            kota = "Kab. Hulu Sungai Selatan"
        when "10"
            kode = "BJR"
            kota = "Kab. Banjar"
        when "11"
            kode = "HST"
            kota = "Kab. Hulu Sungai Tengah"
        when "12"
            kode = "TPN"
            kota = "Kab. Tapin"
        when "13"
            kode = "TLA"
            kota = "Kab. Tanah Laut"
        end


        city = City.where('code = ?',kode).first
    
        total = city.cov_positive_count + city.cov_died_count + city.cov_recovered_count
    
        return @text = { "message" => "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{total} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nODP : #{city.cov_odp_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n " }
    
    end

end