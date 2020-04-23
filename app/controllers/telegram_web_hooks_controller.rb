class TelegramWebHooksController < Telegram::Bot::UpdatesController
  include Telegram::Bot::UpdatesController::MessageContext

  def start!(*)
    
    text = "Selamat datang 👋👋  Mari Bergerak Mencegah Penyebaran Covid-19 Di Banua Kita. \n \nApa yang ingin anda ketahui ? \n/angka_sebaran - Jumlah angka sebaran seluruh Kabupaten/Kota.\n/lokasi_terkini - Jumlah angka sebaran sesuai dengan lokasi anda.\n/pilih_kota Pilih Kabupaten/Kota.\n/rumah_sakit_rujukan - Rumah Sakit Rujukan Penanganan Covid-19.\n/hub_dinkes - Kontak Dinas Kesehatan Prov. Kalsel.\n/hub_bpbd - Kontak Badan Penanggulangan Bencana Daerah Prov. Kalsel.\n \n \nUpdate terkini bisa anda cek di https://corona.kalselprov.go.id"

    respond_with :message, text: text
  end

  def angka_sebaran!(*)

    @cov_positive_count = City.sum('cov_positive_count')
    @cov_odp_count = City.sum('cov_odp_count')
    @cov_pdp_count = City.sum('cov_pdp_count')
    @cov_died_count = City.sum('cov_died_count')
    @cov_recovered_count = City.sum('cov_recovered_count')
    @cov_positive_total = @cov_positive_count + @cov_died_count + @cov_recovered_count
    @cities = City.all
    @city_last_updated = @cities.order("updated_at DESC").first
    text = "Angka Sebaran di Kalimantan Selatan \nTotal Positif (Dirawat, Meninggal, Sembuh) : #{@cov_positive_total} \nDirawat : #{@cov_positive_count} \nSembuh : #{@cov_recovered_count} \nMeninggal : #{@cov_died_count} \nODP : #{@cov_odp_count} \nPDP : #{@cov_pdp_count }"

    respond_with :message, text: text
  end

  def lokasi_terkini!(*)

    result = respond_with :message, text: "Tekan Tombol LOKASI TERKINI", reply_markup: {
        keyboard: [
          
            [{text: "LOKASI TERKINI", request_location: true}],

        ],
        selective: true,
        one_time_keyboard: true,
        resize_keyboard: true
      } 
  end

  def pilih_kota!(*)
    text = "Pilih Kota/Kab. dibawah untuk mengetahui angka sebaran. \n/tanah_laut - Kabupaten Tanah Laut\n/kotabaru - Kabupaten Kotabaru\n/banjar - Kabupaten Banjar\n/barito_kuala - Kabupaten Barito Kuala\n/tapin - Kabupaten Tapin\n/hss - Kabupaten Hulu Sungai Selatan\n/hst - Kabupaten Hulu Sungai Tengah\n/hsu - Kabupaten Hulu Sungai Utara\n/tabalong - Kabupaten Tabalong\n/tanah_bumbu - Kabupaten Tanah Bumbu\n/balangan - Kabupaten Balangan\n/banjarbaru - Kota Banjarbaru\n/banjarmasin - Kota Banjarmasin\n \n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def tanah_laut!(*)
    kode = "TLA"
    kota = "Tanah Laut"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def kotabaru!(*)
    kode = "KTB"
    kota = "Kotabaru"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def banjar!(*)
    kode = "BJR"
    kota = "Kab. Banjar"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def barito_kuala!(*)
    kode = "BTL"
    kota = "Kab. Barito Kuala"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def tapin!(*)
    kode = "TPN"
    kota = "Kab. Tapin"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def hss!(*)
    kode = "HSS"
    kota = "Kab. Hulu Sungai Selatan"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def hsu!(*)
    kode = "HSU"
    kota = "Kab. Hulu Sungai Utara"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def hst!(*)
    kode = "HST"
    kota = "Kab. Hulu Sungai Tengah"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def tabalong!(*)
    kode = "TBL"
    kota = "Kab. Tabalong"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def tanah_bumbu!(*)
    kode = "TBU"
    kota = "Kab. Tanah Bumbu"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def balangan!(*)
    kode = "BLG"
    kota = "Kab. Balangan"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def banjarbaru!(*)
    kode = "BJB"
    kota = "Kota Banjarbaru"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def banjarmasin!(*)
    kode = "BJM"
    kota = "Kota Banjarmasin"

    city = City.where('code = ?',kode).first

    text = "Angka Sebaran Covid-19 di Wilayah #{kota} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota.\n/menu - Kembali Ke Menu"

    respond_with :message, text: text
  end

  def rumah_sakit_rujukan!(*)
    hospitals = Hospital.where('is_primary = true')
    
    text = "Daftar Rumah Sakit Rujukan :\n"

    hospitals.each_with_index do |hospital,i|
      text = text + "- #{hospital.name_hospital} Telp. #{hospital.phone_number}\n"
    end

    text = text + "\n \n/menu - Kembali Ke Menu"
    respond_with :message, text: text
  end

  def hub_dinkes!(*)
    text = "Hubungi Call Center Dinas Kesehatan Prov. Kalsel di 082157718673/082157718672.\n \n/menu - Kembali Ke Menu"
    
    respond_with :message, text: text
  end

  def hub_bpbd!(*)
    text = "Hubungi Call Center Badan Penanggulangan Bencana Daerah Prov. Kalsel di 05115911968/08115004474.\n \n/menu - Kembali Ke Menu"
    
    respond_with :message, text: text
  end

  def menu!(*)
    p from['id']
    text = "Apa yang ingin anda ketahui ? \n/angka_sebaran - Jumlah angka sebaran seluruh Kabupaten/Kota.\n/lokasi_terkini - Jumlah angka sebaran sesuai dengan lokasi anda.\n/pilih_kota Pilih Kabupaten/Kota.\n/rumah_sakit_rujukan - Rumah Sakit Rujukan Penanganan Covid-19.\n/hub_dinkes - Kontak Dinas Kesehatan Prov. Kalsel.\n/hub_bpbd - Kontak Badan Penanggulangan Bencana Daerah Prov. Kalsel.\n \n \nUpdate terkini bisa anda cek di https://corona.kalselprov.go.id"
    respond_with :message, text: text
  end

  def memo!(*args)
    if args.any?
      session[:memo] = args.join(' ')
      respond_with :message, text: t('.notice')
    else
      respond_with :message, text: t('.prompt')
      save_context :memo!
    end
  end

  def remind_me!(*)
    to_remind = session.delete(:memo)
    reply = to_remind || t('.nothing')
    respond_with :message, text: reply
  end

  def keyboard!(value = nil, *)
    if value
      respond_with :message, text: t('.selected', value: value)
    else
      save_context :keyboard!
      respond_with :message, text: t('.prompt'), reply_markup: {
        keyboard: [t('.buttons')],
        resize_keyboard: true,
        one_time_keyboard: true,
        selective: true,

      }
    end
  end

  def inline_keyboard!(value = nil,*)
    result = respond_with :message, text: "Tekan Tombol Lokasi Anda", reply_markup: {
        keyboard: [
          
            [{text: "Lokasi Anda", request_location: true}],

        ],
        selective: true,
        one_time_keyboard: true,
        resize_keyboard: true

      } 

    p "*" * 100
    p result['result']['chat']
    result

  end


  def callback_query(data)
    if data == 'alert'
      answer_callback_query t('.alert'), show_alert: true
    else
      answer_callback_query t('.no_alert')
    end
  end

  def message(message)
    if message['text']
      respond_with :message, text: t('.content', text: message['text'])
    else message['location']
      lat = message['location']['latitude']
      long = message['location']['longitude']
      lat_lon = "#{lat},#{long}"

      url = "api.traveltimeapp.com/v4/geocoding/reverse?lat=#{lat}&lng=#{long}"
      response = RestClient.get(url,headers={Accept: "application/json", "X-Application-Id"=> "4013a054", "X-Api-Key"=> "cfc402cb3527be0f47d71217ef8fa1c7"})
      p lat_lon 
      jsonresponse = JSON.parse(response)["features"]
      
      if jsonresponse[0]["properties"]["county"]
        kota = jsonresponse[0]["properties"]["county"]
      else
        kota = jsonresponse[0]["properties"]["city"]
      end
      
      if kota.include? "Kotabaru"
        kota = "kotabaru"
      end

      
      if kota.include? "BALITOKUALA"
        kota = "barito kuala"
      end

      city = City.where('name like ?',"%#{kota}%").first

      text = "Angka Sebaran Covid-19 di Wilayah #{city.name} :\nTotal Positif : #{city.cov_positive_count} Orang\nDirawat : #{city.cov_positive_count} Orang\nSembuh : #{city.cov_recovered_count} Orang \nMeninggal : #{city.cov_died_count} Orang\nPDP : #{city.cov_pdp_count} Orang\n \n/pilih_kota - Pilih Kabupaten/Kota\n/menu - Kembali Ke Menu"

      respond_with :message, text: text
      #respond_with :message, text: "#{jsonresponse[0]["properties"]["county"]}"

    end
  end

  def inline_query(query, _offset)
    query = query.first(10) # it's just an example, don't use large queries.
    t_description = t('.description')
    t_content = t('.content')
    results = Array.new(5) do |i|
      {
        type: :article,
        title: "#{query}-#{i}",
        id: "#{query}-#{i}",
        description: "#{t_description} #{i}",
        input_message_content: {
          message_text: "#{t_content} #{i}",

        },

      }
    end
    answer_inline_query results
  end

  # As there is no chat id in such requests, we can not respond instantly.
  # So we just save the result_id, and it's available then with `/last_chosen_inline_result`.
  def chosen_inline_result(result_id, _query)
    session[:last_chosen_inline_result] = result_id
  end

  def last_chosen_inline_result!(*)
    result_id = session[:last_chosen_inline_result]
    if result_id
      respond_with :message, text: t('.selected', result_id: result_id)
    else
      respond_with :message, text: t('.prompt')
    end
  end

  def action_missing(action, *_args)
    if action_type == :command
      respond_with :message,
        text: t('telegram_webhooks.action_missing.command', command: action_options[:command])
    else
      respond_with :message, text: t('telegram_webhooks.action_missing.feature', action: action)
    end
  end
end
