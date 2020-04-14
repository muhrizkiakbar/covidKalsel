# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

permissions =[
    {
        name: 'City', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management City', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cities_path' #path di rails route
    },
    {
        name: 'New City', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add City City', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_city_path' #path di rails route
    },
    {
        name: 'Update City', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change City', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_city_path' #path di rails route
    },

    {
        name: 'Show City', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show City', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'city_path' #path di rails route
    },
    {
        name: 'Remove City', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove City', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'city_path' #path di rails route
    },
    # =================================================================
    {
        name: 'CoV Died', #Penamaan gasan permission nya
        resource: 'cov_died', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management CoV Died', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cov_dieds_path' #path di rails route
    },
    {
        name: 'New CoV Died', #Penamaan gasan permission nya
        resource: 'cov_died', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add CoV Died', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_cov_died_path' #path di rails route
    },
    {
        name: 'Update CoV Died', #Penamaan gasan permission nya
        resource: 'cov_died', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change CoV Died', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_cov_died_path' #path di rails route
    },
    {
        name: 'Show CoV Died', #Penamaan gasan permission nya
        resource: 'cov_died', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show CoV Died', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_died_path' #path di rails route
    },
    {
        name: 'Remove CoV Died', #Penamaan gasan permission nya
        resource: 'cov_died', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove CoV Died', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_died_path' #path di rails route
    },
    # =====================================================================
    {
        name: 'CoV Negative', #Penamaan gasan permission nya
        resource: 'cov_negative', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management CoV Negative', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cov_negatives_path' #path di rails route
    },
    {
        name: 'New CoV Negative', #Penamaan gasan permission nya
        resource: 'cov_negative', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add CoV Negative', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_cov_negative_path' #path di rails route
    },
    {
        name: 'Update CoV Negative', #Penamaan gasan permission nya
        resource: 'cov_negative', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change CoV Negative', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_cov_negative_path' #path di rails route
    },
    {
        name: 'Show CoV Negative', #Penamaan gasan permission nya
        resource: 'cov_negative', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show CoV Negative', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_negative_path' #path di rails route
    },
    {
        name: 'Remove CoV Negative', #Penamaan gasan permission nya
        resource: 'cov_negative', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove CoV Negative', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_negative_path' #path di rails route
    },
    # ====================================================================
    {
        name: 'CoV Odp', #Penamaan gasan permission nya
        resource: 'cov_odp', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management CoV Odp', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cov_odps_path' #path di rails route
    },
    {
        name: 'New CoV Odp', #Penamaan gasan permission nya
        resource: 'cov_odp', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add CoV Odp', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_cov_odp_path' #path di rails route
    },
    {
        name: 'Update CoV Odp', #Penamaan gasan permission nya
        resource: 'cov_odp', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change CoV Odp', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_cov_odp_path' #path di rails route
    },
    {
        name: 'Show CoV Odp', #Penamaan gasan permission nya
        resource: 'cov_odp', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show CoV Odp', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_odp_path' #path di rails route
    },
    {
        name: 'Remove CoV Odp', #Penamaan gasan permission nya
        resource: 'cov_odp', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove CoV Odp', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_odp_path' #path di rails route
    },
    # ====================================================================
    {
        name: 'CoV Odp Processed', #Penamaan gasan permission nya
        resource: 'cov_odp_processed', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management CoV Odp Processed', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cov_odp_processeds_path' #path di rails route
    },
    {
        name: 'New CoV Odp Processed', #Penamaan gasan permission nya
        resource: 'cov_odp_processed', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add CoV Odp Processed', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_cov_odp_processed_path' #path di rails route
    },
    {
        name: 'Update CoV Odp Processed', #Penamaan gasan permission nya
        resource: 'cov_odp_processed', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change CoV Odp Processed', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_cov_odp_processed_path' #path di rails route
    },
    {
        name: 'Show CoV Odp Processed', #Penamaan gasan permission nya
        resource: 'cov_odp_processed', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show CoV Odp Processed', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_odp_processed_path' #path di rails route
    },
    {
        name: 'Remove CoV Odp Processed', #Penamaan gasan permission nya
        resource: 'cov_odp_processed', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove CoV Odp Processed', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_odp_processed_path' #path di rails route
    },
    # ======================================================================
    {
        name: 'CoV Pdp', #Penamaan gasan permission nya
        resource: 'cov_pdp', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management CoV Pdp', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cov_pdps_path' #path di rails route
    },
    {
        name: 'New CoV Pdp', #Penamaan gasan permission nya
        resource: 'cov_pdp', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add CoV Pdp', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_cov_pdp_path' #path di rails route
    },
    {
        name: 'Update CoV Pdp', #Penamaan gasan permission nya
        resource: 'cov_pdp', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change CoV Pdp', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_cov_pdp_path' #path di rails route
    },
    {
        name: 'Show CoV Pdp', #Penamaan gasan permission nya
        resource: 'cov_pdp', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show CoV Pdp', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_pdp_path' #path di rails route
    },
    {
        name: 'Remove CoV Pdp', #Penamaan gasan permission nya
        resource: 'cov_pdp', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove CoV Pdp', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_pdp_path' #path di rails route
    },
    # ======================================================================
    {
        name: 'CoV Pdp Processed', #Penamaan gasan permission nya
        resource: 'cov_pdp_processed', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management CoV Pdp Processed', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cov_pdp_processeds_path' #path di rails route
    },
    {
        name: 'New CoV Pdp Processed', #Penamaan gasan permission nya
        resource: 'cov_pdp_processed', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add CoV Pdp Processed', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_cov_pdp_processed_path' #path di rails route
    },
    {
        name: 'Update CoV Pdp Processed', #Penamaan gasan permission nya
        resource: 'cov_pdp_processed', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change CoV Pdp Processed', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_cov_pdp_processed_path' #path di rails route
    },
    {
        name: 'Show CoV Pdp Processed', #Penamaan gasan permission nya
        resource: 'cov_pdp_processed', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show CoV Pdp Processed', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_pdp_processed_path' #path di rails route
    },
    {
        name: 'Remove CoV Pdp Processed', #Penamaan gasan permission nya
        resource: 'cov_pdp_processed', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove CoV Pdp Processed', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_pdp_processed_path' #path di rails route
    },
    # =======================================================================
    {
        name: 'CoV Positive', #Penamaan gasan permission nya
        resource: 'cov_positive', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management CoV Positive', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cov_positives_path' #path di rails route
    },
    {
        name: 'New CoV Positive', #Penamaan gasan permission nya
        resource: 'cov_positive', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add CoV Positive', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_cov_positive_path' #path di rails route
    },
    {
        name: 'Update CoV Positive', #Penamaan gasan permission nya
        resource: 'cov_positive', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change CoV Positive', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_cov_positive_path' #path di rails route
    },
    {
        name: 'Show CoV Positive', #Penamaan gasan permission nya
        resource: 'cov_positive', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show CoV Positive', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_positive_path' #path di rails route
    },
    {
        name: 'Remove CoV Positive', #Penamaan gasan permission nya
        resource: 'cov_positive', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove CoV Positive', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_positive_path' #path di rails route
    },
    # ======================================================================
    {
        name: 'CoV Recovered', #Penamaan gasan permission nya
        resource: 'cov_recovered', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management CoV Recovered', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cov_recovereds_path' #path di rails route
    },
    {
        name: 'New CoV Recovered', #Penamaan gasan permission nya
        resource: 'cov_recovered', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add CoV Recovered', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_cov_recovered_path' #path di rails route
    },
    {
        name: 'Update CoV Recovered', #Penamaan gasan permission nya
        resource: 'cov_recovered', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change CoV Recovered', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_cov_recovered_path' #path di rails route
    },
    {
        name: 'Show CoV Recovered', #Penamaan gasan permission nya
        resource: 'cov_recovered', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show CoV Recovered', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_recovered_path' #path di rails route
    },
    {
        name: 'Remove CoV Recovered', #Penamaan gasan permission nya
        resource: 'cov_recovered', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove CoV Recovered', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'cov_recovered_path' #path di rails route
    },
    # ======================================================================
    {
        name: 'Hospital', #Penamaan gasan permission nya
        resource: 'hospital', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management Hospital', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'hospitals_path' #path di rails route
    },
    {
        name: 'New Hospital', #Penamaan gasan permission nya
        resource: 'hospital', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add Hospital', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_hospital_path' #path di rails route
    },
    {
        name: 'Update Hospital', #Penamaan gasan permission nya
        resource: 'hospital', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change Hospital', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_hospital_path' #path di rails route
    },
    {
        name: 'Show Hospital', #Penamaan gasan permission nya
        resource: 'hospital', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show Hospital', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'hospital_path' #path di rails route
    },
    {
        name: 'Remove Hospital', #Penamaan gasan permission nya
        resource: 'hospital', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove Hospital', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'hospital_path' #path di rails route
    },
    # =========================================================================
    {
        name: 'Information', #Penamaan gasan permission nya
        resource: 'information', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management Information', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'information_index_path' #path di rails route
    },
    {
        name: 'New Information', #Penamaan gasan permission nya
        resource: 'information', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add Information', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_information_path' #path di rails route
    },
    {
        name: 'Update Information', #Penamaan gasan permission nya
        resource: 'information', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change Information', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_information_path' #path di rails route
    },
    {
        name: 'Show Information', #Penamaan gasan permission nya
        resource: 'information', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show Information', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'information_path' #path di rails route
    },
    {
        name: 'Remove Information', #Penamaan gasan permission nya
        resource: 'information', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove Information', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'information_path' #path di rails route
    },
    # =========================================================================
    {
        name: 'Info Practice', #Penamaan gasan permission nya
        resource: 'info_practice', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management Info Practice', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'info_practices_path' #path di rails route
    },
    {
        name: 'New Info Practice', #Penamaan gasan permission nya
        resource: 'info_practice', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add Info Practice', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_info_practice_path' #path di rails route
    },
    {
        name: 'Update Info Practice', #Penamaan gasan permission nya
        resource: 'info_practice', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change Info Practice', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_info_practice_path' #path di rails route
    },
    {
        name: 'Show Info Practice', #Penamaan gasan permission nya
        resource: 'info_practice', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show Info Practice', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'info_practice_path' #path di rails route
    },
    {
        name: 'Remove Info Practice', #Penamaan gasan permission nya
        resource: 'info_practice', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove Info Practice', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'info_practice_path' #path di rails route
    },
    # ==================================================================
    {
        name: 'Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management Role', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'roles_path' #path di rails route
    },
    {
        name: 'New Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add Role', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_role_path' #path di rails route
    },
    {
        name: 'Update Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change Role', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_role_path' #path di rails route
    },
    {
        name: 'Show Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show Role', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'role_path' #path di rails route
    },
    {
        name: 'Remove Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove Role', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'role_path' #path di rails route
    },
    # ===============================================================

    {
        name: 'User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management User', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'users_path' #path di rails route
    },
    {
        name: 'New User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add User', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_user_path' #path di rails route
    },
    {
        name: 'Update User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change User', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_user_path' #path di rails route
    },
    {
        name: 'Show User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show User', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'user_path' #path di rails route
    },
    {
        name: 'Remove User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove User', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'user_path' #path di rails route
    },
    # =========================================================================
    {
        name: 'Letter', #Penamaan gasan permission nya
        resource: 'letter', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Management Letter', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'letters_path' #path di rails route
    },
    {
        name: 'New Letter', #Penamaan gasan permission nya
        resource: 'letter', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Add Letter', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_letter_path' #path di rails route
    },
    {
        name: 'Update Letter', #Penamaan gasan permission nya
        resource: 'letter', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Change Letter', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_letter_path' #path di rails route
    },
    {
        name: 'Show Letter', #Penamaan gasan permission nya
        resource: 'letter', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show Letter', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'letter_path' #path di rails route
    },
    {
        name: 'Remove Letter', #Penamaan gasan permission nya
        resource: 'letter', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Remove Letter', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'letter_path' #path di rails route
    },

]


puts "Create Permissions"
 permissions.each_with_index do |permission,key|
      add_permissions= Permission.create(
        name: permission[:name], #Penamaan gasan permission nya
        resource: permission[:resource], #nama file di model harus sama
        action: permission[:action], #nama function di controller
        description: permission[:description], #gasan penjelasan aja
        page: permission[:page], #ini akan bisa di akses di menu atau tidak
        path: permission[:path] #path di rails route
      )

 end

 roles=[{name: "Superadmin"},{name: "User"}]


 puts "Create Role"
 roles.each do |role|
        add_roles=Role.create(role)
 end

roles = Role.all
permissions = Permission.all

puts "Create Role Permissions"
roles.each do |role|
    permissions.each do |permission|
        role_permission = RolePermission.new
        role_permission.role=role
        role_permission.permission=permission
        role_permission.save
    end
end

puts "Create City"

cityurl = 'http://dev.farizdotid.com/api/daerahindonesia/provinsi/63/kabupaten'
responsecity = RestClient.get(cityurl)

jsonresponsecity = JSON.parse(responsecity)["kabupatens"]
citycode = {
  "6301": {
    "code": "TLA"
  },
  "6302": {
    "code": "KTB"
  },
  "6303": {
    "code": "BJR"
  },
  "6304": {
    "code": "BTL"
  },
  "6305": {
    "code": "TPN"
  },
  "6306": {
    "code": "HSS"
  },
  "6307": {
    "code": "HST"
  },
  "6308": {
    "code": "HSU"
  },
  "6309": {
    "code": "TBL"
  },
  "6310": {
    "code": "TBU"
  },
  "6311": {
    "code": "BLG"
  },
  "6371": {
    "code": "BJM"
  },
  "6372": {
    "code": "BJB"
  },
}

jsonresponsecity.each do |city|
    addcity = City.new
    addcity.name= city["nama"]
    addcity.call_center = "123"
    addcity.cov_positive_count = 0
    addcity.cov_negative_count = 0
    addcity.cov_recovered_count = 0
    addcity.cov_died_count = 0
    addcity.cov_odp_count = 0
    addcity.cov_pdp_count = 0
    addcity.cov_odp_processed_count = 0
    addcity.cov_pdp_processed_count = 0
    addcity.code = JSON.parse(citycode.to_json)[city["id"]]["code"]
    addcity.save
    idcityapi = city["id"]

end

puts "Create User"

role=Role.first

add_user = User.create(
        role_id: role.id,
        username: "diskominfo",
        email: "diskominfo@kalselprov.go.id",
        name: "diskominfo",
        password: "@diskominfo123"
    )
