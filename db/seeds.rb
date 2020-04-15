# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# permissions =[
#     {
#         name: 'City', #Penamaan gasan permission nya
#         resource: 'city', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management City', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'cities_path' #path di rails route
#     },
#     {
#         name: 'New City', #Penamaan gasan permission nya
#         resource: 'city', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add City City', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_city_path' #path di rails route
#     },
#     {
#         name: 'Update City', #Penamaan gasan permission nya
#         resource: 'city', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change City', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_city_path' #path di rails route
#     },

#     {
#         name: 'Show City', #Penamaan gasan permission nya
#         resource: 'city', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show City', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'city_path' #path di rails route
#     },
#     {
#         name: 'Remove City', #Penamaan gasan permission nya
#         resource: 'city', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove City', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'city_path' #path di rails route
#     },
#     # =================================================================
#     {
#         name: 'CoV Died', #Penamaan gasan permission nya
#         resource: 'cov_died', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management CoV Died', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_dieds_path' #path di rails route
#     },
#     {
#         name: 'New CoV Died', #Penamaan gasan permission nya
#         resource: 'cov_died', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add CoV Died', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_cov_died_path' #path di rails route
#     },
#     {
#         name: 'Update CoV Died', #Penamaan gasan permission nya
#         resource: 'cov_died', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change CoV Died', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_cov_died_path' #path di rails route
#     },
#     {
#         name: 'Show CoV Died', #Penamaan gasan permission nya
#         resource: 'cov_died', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show CoV Died', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_died_path' #path di rails route
#     },
#     {
#         name: 'Remove CoV Died', #Penamaan gasan permission nya
#         resource: 'cov_died', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove CoV Died', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_died_path' #path di rails route
#     },
#     # =====================================================================
#     {
#         name: 'CoV Negative', #Penamaan gasan permission nya
#         resource: 'cov_negative', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management CoV Negative', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_negatives_path' #path di rails route
#     },
#     {
#         name: 'New CoV Negative', #Penamaan gasan permission nya
#         resource: 'cov_negative', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add CoV Negative', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_cov_negative_path' #path di rails route
#     },
#     {
#         name: 'Update CoV Negative', #Penamaan gasan permission nya
#         resource: 'cov_negative', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change CoV Negative', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_cov_negative_path' #path di rails route
#     },
#     {
#         name: 'Show CoV Negative', #Penamaan gasan permission nya
#         resource: 'cov_negative', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show CoV Negative', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_negative_path' #path di rails route
#     },
#     {
#         name: 'Remove CoV Negative', #Penamaan gasan permission nya
#         resource: 'cov_negative', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove CoV Negative', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_negative_path' #path di rails route
#     },
#     # ====================================================================
#     {
#         name: 'CoV Odp', #Penamaan gasan permission nya
#         resource: 'cov_odp', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management CoV Odp', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_odps_path' #path di rails route
#     },
#     {
#         name: 'New CoV Odp', #Penamaan gasan permission nya
#         resource: 'cov_odp', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add CoV Odp', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_cov_odp_path' #path di rails route
#     },
#     {
#         name: 'Update CoV Odp', #Penamaan gasan permission nya
#         resource: 'cov_odp', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change CoV Odp', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_cov_odp_path' #path di rails route
#     },
#     {
#         name: 'Show CoV Odp', #Penamaan gasan permission nya
#         resource: 'cov_odp', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show CoV Odp', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_odp_path' #path di rails route
#     },
#     {
#         name: 'Remove CoV Odp', #Penamaan gasan permission nya
#         resource: 'cov_odp', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove CoV Odp', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_odp_path' #path di rails route
#     },
#     # ====================================================================
#     {
#         name: 'CoV Odp Processed', #Penamaan gasan permission nya
#         resource: 'cov_odp_processed', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management CoV Odp Processed', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_odp_processeds_path' #path di rails route
#     },
#     {
#         name: 'New CoV Odp Processed', #Penamaan gasan permission nya
#         resource: 'cov_odp_processed', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add CoV Odp Processed', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_cov_odp_processed_path' #path di rails route
#     },
#     {
#         name: 'Update CoV Odp Processed', #Penamaan gasan permission nya
#         resource: 'cov_odp_processed', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change CoV Odp Processed', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_cov_odp_processed_path' #path di rails route
#     },
#     {
#         name: 'Show CoV Odp Processed', #Penamaan gasan permission nya
#         resource: 'cov_odp_processed', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show CoV Odp Processed', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_odp_processed_path' #path di rails route
#     },
#     {
#         name: 'Remove CoV Odp Processed', #Penamaan gasan permission nya
#         resource: 'cov_odp_processed', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove CoV Odp Processed', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_odp_processed_path' #path di rails route
#     },
#     # ======================================================================
#     {
#         name: 'CoV Pdp', #Penamaan gasan permission nya
#         resource: 'cov_pdp', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management CoV Pdp', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_pdps_path' #path di rails route
#     },
#     {
#         name: 'New CoV Pdp', #Penamaan gasan permission nya
#         resource: 'cov_pdp', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add CoV Pdp', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_cov_pdp_path' #path di rails route
#     },
#     {
#         name: 'Update CoV Pdp', #Penamaan gasan permission nya
#         resource: 'cov_pdp', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change CoV Pdp', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_cov_pdp_path' #path di rails route
#     },
#     {
#         name: 'Show CoV Pdp', #Penamaan gasan permission nya
#         resource: 'cov_pdp', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show CoV Pdp', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_pdp_path' #path di rails route
#     },
#     {
#         name: 'Remove CoV Pdp', #Penamaan gasan permission nya
#         resource: 'cov_pdp', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove CoV Pdp', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_pdp_path' #path di rails route
#     },
#     # ======================================================================
#     {
#         name: 'CoV Pdp Processed', #Penamaan gasan permission nya
#         resource: 'cov_pdp_processed', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management CoV Pdp Processed', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_pdp_processeds_path' #path di rails route
#     },
#     {
#         name: 'New CoV Pdp Processed', #Penamaan gasan permission nya
#         resource: 'cov_pdp_processed', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add CoV Pdp Processed', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_cov_pdp_processed_path' #path di rails route
#     },
#     {
#         name: 'Update CoV Pdp Processed', #Penamaan gasan permission nya
#         resource: 'cov_pdp_processed', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change CoV Pdp Processed', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_cov_pdp_processed_path' #path di rails route
#     },
#     {
#         name: 'Show CoV Pdp Processed', #Penamaan gasan permission nya
#         resource: 'cov_pdp_processed', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show CoV Pdp Processed', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_pdp_processed_path' #path di rails route
#     },
#     {
#         name: 'Remove CoV Pdp Processed', #Penamaan gasan permission nya
#         resource: 'cov_pdp_processed', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove CoV Pdp Processed', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_pdp_processed_path' #path di rails route
#     },
#     # =======================================================================
#     {
#         name: 'CoV Positive', #Penamaan gasan permission nya
#         resource: 'cov_positive', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management CoV Positive', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_positives_path' #path di rails route
#     },
#     {
#         name: 'New CoV Positive', #Penamaan gasan permission nya
#         resource: 'cov_positive', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add CoV Positive', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_cov_positive_path' #path di rails route
#     },
#     {
#         name: 'Update CoV Positive', #Penamaan gasan permission nya
#         resource: 'cov_positive', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change CoV Positive', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_cov_positive_path' #path di rails route
#     },
#     {
#         name: 'Show CoV Positive', #Penamaan gasan permission nya
#         resource: 'cov_positive', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show CoV Positive', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_positive_path' #path di rails route
#     },
#     {
#         name: 'Remove CoV Positive', #Penamaan gasan permission nya
#         resource: 'cov_positive', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove CoV Positive', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_positive_path' #path di rails route
#     },
#     # ======================================================================
#     {
#         name: 'CoV Recovered', #Penamaan gasan permission nya
#         resource: 'cov_recovered', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management CoV Recovered', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_recovereds_path' #path di rails route
#     },
#     {
#         name: 'New CoV Recovered', #Penamaan gasan permission nya
#         resource: 'cov_recovered', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add CoV Recovered', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_cov_recovered_path' #path di rails route
#     },
#     {
#         name: 'Update CoV Recovered', #Penamaan gasan permission nya
#         resource: 'cov_recovered', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change CoV Recovered', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_cov_recovered_path' #path di rails route
#     },
#     {
#         name: 'Show CoV Recovered', #Penamaan gasan permission nya
#         resource: 'cov_recovered', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show CoV Recovered', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_recovered_path' #path di rails route
#     },
#     {
#         name: 'Remove CoV Recovered', #Penamaan gasan permission nya
#         resource: 'cov_recovered', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove CoV Recovered', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'cov_recovered_path' #path di rails route
#     },
#     # ======================================================================
#     {
#         name: 'Hospital', #Penamaan gasan permission nya
#         resource: 'hospital', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management Hospital', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'hospitals_path' #path di rails route
#     },
#     {
#         name: 'New Hospital', #Penamaan gasan permission nya
#         resource: 'hospital', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add Hospital', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_hospital_path' #path di rails route
#     },
#     {
#         name: 'Update Hospital', #Penamaan gasan permission nya
#         resource: 'hospital', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change Hospital', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_hospital_path' #path di rails route
#     },
#     {
#         name: 'Show Hospital', #Penamaan gasan permission nya
#         resource: 'hospital', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show Hospital', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'hospital_path' #path di rails route
#     },
#     {
#         name: 'Remove Hospital', #Penamaan gasan permission nya
#         resource: 'hospital', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove Hospital', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'hospital_path' #path di rails route
#     },
#     # =========================================================================
#     {
#         name: 'Information', #Penamaan gasan permission nya
#         resource: 'information', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management Information', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'information_index_path' #path di rails route
#     },
#     {
#         name: 'New Information', #Penamaan gasan permission nya
#         resource: 'information', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add Information', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_information_path' #path di rails route
#     },
#     {
#         name: 'Update Information', #Penamaan gasan permission nya
#         resource: 'information', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change Information', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_information_path' #path di rails route
#     },
#     {
#         name: 'Show Information', #Penamaan gasan permission nya
#         resource: 'information', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show Information', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'information_path' #path di rails route
#     },
#     {
#         name: 'Remove Information', #Penamaan gasan permission nya
#         resource: 'information', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove Information', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'information_path' #path di rails route
#     },
#     # =========================================================================
#     {
#         name: 'Info Practice', #Penamaan gasan permission nya
#         resource: 'info_practice', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management Info Practice', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'info_practices_path' #path di rails route
#     },
#     {
#         name: 'New Info Practice', #Penamaan gasan permission nya
#         resource: 'info_practice', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add Info Practice', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_info_practice_path' #path di rails route
#     },
#     {
#         name: 'Update Info Practice', #Penamaan gasan permission nya
#         resource: 'info_practice', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change Info Practice', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_info_practice_path' #path di rails route
#     },
#     {
#         name: 'Show Info Practice', #Penamaan gasan permission nya
#         resource: 'info_practice', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show Info Practice', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'info_practice_path' #path di rails route
#     },
#     {
#         name: 'Remove Info Practice', #Penamaan gasan permission nya
#         resource: 'info_practice', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove Info Practice', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'info_practice_path' #path di rails route
#     },
#     # ==================================================================
#     {
#         name: 'Role', #Penamaan gasan permission nya
#         resource: 'role', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management Role', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'roles_path' #path di rails route
#     },
#     {
#         name: 'New Role', #Penamaan gasan permission nya
#         resource: 'role', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add Role', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_role_path' #path di rails route
#     },
#     {
#         name: 'Update Role', #Penamaan gasan permission nya
#         resource: 'role', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change Role', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_role_path' #path di rails route
#     },
#     {
#         name: 'Show Role', #Penamaan gasan permission nya
#         resource: 'role', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show Role', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'role_path' #path di rails route
#     },
#     {
#         name: 'Remove Role', #Penamaan gasan permission nya
#         resource: 'role', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove Role', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'role_path' #path di rails route
#     },
#     # ===============================================================

#     {
#         name: 'User', #Penamaan gasan permission nya
#         resource: 'user', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management User', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'users_path' #path di rails route
#     },
#     {
#         name: 'New User', #Penamaan gasan permission nya
#         resource: 'user', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add User', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_user_path' #path di rails route
#     },
#     {
#         name: 'Update User', #Penamaan gasan permission nya
#         resource: 'user', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change User', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_user_path' #path di rails route
#     },
#     {
#         name: 'Show User', #Penamaan gasan permission nya
#         resource: 'user', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show User', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'user_path' #path di rails route
#     },
#     {
#         name: 'Remove User', #Penamaan gasan permission nya
#         resource: 'user', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove User', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'user_path' #path di rails route
#     },
#     # =========================================================================
#     {
#         name: 'Letter', #Penamaan gasan permission nya
#         resource: 'letter', #nama file di model harus sama
#         action: 'index', #nama function di controller
#         description: 'Management Letter', #gasan penjelasan aja
#         page: true, #ini akan bisa di akses di menu atau tidak
#         path: 'letters_path' #path di rails route
#     },
#     {
#         name: 'New Letter', #Penamaan gasan permission nya
#         resource: 'letter', #nama file di model harus sama
#         action: 'new', #nama function di controller
#         description: 'Add Letter', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'new_letter_path' #path di rails route
#     },
#     {
#         name: 'Update Letter', #Penamaan gasan permission nya
#         resource: 'letter', #nama file di model harus sama
#         action: 'edit', #nama function di controller
#         description: 'Change Letter', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'edit_letter_path' #path di rails route
#     },
#     {
#         name: 'Show Letter', #Penamaan gasan permission nya
#         resource: 'letter', #nama file di model harus sama
#         action: 'show', #nama function di controller
#         description: 'Show Letter', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'letter_path' #path di rails route
#     },
#     {
#         name: 'Remove Letter', #Penamaan gasan permission nya
#         resource: 'letter', #nama file di model harus sama
#         action: 'destroy', #nama function di controller
#         description: 'Remove Letter', #gasan penjelasan aja
#         page: false, #ini akan bisa di akses di menu atau tidak
#         path: 'letter_path' #path di rails route
#     },

# ]


# puts "Create Permissions"
#  permissions.each_with_index do |permission,key|
#       add_permissions= Permission.create(
#         name: permission[:name], #Penamaan gasan permission nya
#         resource: permission[:resource], #nama file di model harus sama
#         action: permission[:action], #nama function di controller
#         description: permission[:description], #gasan penjelasan aja
#         page: permission[:page], #ini akan bisa di akses di menu atau tidak
#         path: permission[:path] #path di rails route
#       )

#  end

#  roles=[{name: "Superadmin"},{name: "User"}]


#  puts "Create Role"
#  roles.each do |role|
#         add_roles=Role.create(role)
#  end

# roles = Role.all
# permissions = Permission.all

# puts "Create Role Permissions"
# roles.each do |role|
#     permissions.each do |permission|
#         role_permission = RolePermission.new
#         role_permission.role=role
#         role_permission.permission=permission
#         role_permission.save
#     end
# end

# puts "Create City"

# cityurl = 'http://dev.farizdotid.com/api/daerahindonesia/provinsi/63/kabupaten'
# responsecity = RestClient.get(cityurl)

# jsonresponsecity = JSON.parse(responsecity)["kabupatens"]
# citycode = {
#   "6301": {
#     "code": "TLA"
#   },
#   "6302": {
#     "code": "KTB"
#   },
#   "6303": {
#     "code": "BJR"
#   },
#   "6304": {
#     "code": "BTL"
#   },
#   "6305": {
#     "code": "TPN"
#   },
#   "6306": {
#     "code": "HSS"
#   },
#   "6307": {
#     "code": "HST"
#   },
#   "6308": {
#     "code": "HSU"
#   },
#   "6309": {
#     "code": "TBL"
#   },
#   "6310": {
#     "code": "TBU"
#   },
#   "6311": {
#     "code": "BLG"
#   },
#   "6371": {
#     "code": "BJM"
#   },
#   "6372": {
#     "code": "BJB"
#   },
# }

# jsonresponsecity.each do |city|
#     addcity = City.new
#     addcity.name= city["nama"]
#     addcity.call_center = "123"
#     addcity.cov_positive_count = 0
#     addcity.cov_negative_count = 0
#     addcity.cov_recovered_count = 0
#     addcity.cov_died_count = 0
#     addcity.cov_odp_count = 0
#     addcity.cov_pdp_count = 0
#     addcity.cov_odp_processed_count = 0
#     addcity.cov_pdp_processed_count = 0
#     addcity.code = JSON.parse(citycode.to_json)[city["id"]]["code"]
#     addcity.save
#     idcityapi = city["id"]

# end

# puts "Create User"

# role=Role.first

# add_user = User.create(
#         role_id: role.id,
#         username: "diskominfo",
#         email: "diskominfo@kalselprov.go.id",
#         name: "diskominfo",
#         password: "@diskominfo123"
#     )


puts "Add Dirawat"
dirawats= [
            {
                city_id: "1",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-24 10:00:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-24 10:00:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-24 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-24 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-24 15:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-24 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-25 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-25 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-25 09:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-25 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-25 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-25 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-25 15:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-25 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-26 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-26 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-26 09:59:00",
                amount: "2"
            },
            {
                city_id: "4",
                added_at: "2020-03-26 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-26 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-26 09:59:00",
                amount: "1"
            },
            {
                city_id: "7",
                added_at: "2020-03-26 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-26 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-26 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-03-26 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-26 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-26 09:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-26 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-26 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-26 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-26 15:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-26 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-27 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-27 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-27 09:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-27 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-27 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-27 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-27 15:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-27 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-28 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-28 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-28 09:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-28 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-28 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-28 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-28 15:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-28 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-29 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-29 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-29 09:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-29 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-29 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-29 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-29 15:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-29 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-30 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-30 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "4",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "10",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-30 09:59:00",
                amount: "1"
            },
            {
                city_id: "13",
                added_at: "2020-03-30 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-30 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-30 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-30 15:59:00",
                amount: "2"
            },
            {
                city_id: "4",
                added_at: "2020-03-30 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-30 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-30 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-30 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-30 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-30 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-03-30 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-30 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-30 15:59:00",
                amount: "2"
            },
            {
                city_id: "13",
                added_at: "2020-03-30 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-31 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-31 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-31 09:59:00",
                amount: "2"
            },
            {
                city_id: "4",
                added_at: "2020-03-31 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-31 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-31 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-31 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-31 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-31 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-03-31 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-31 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-31 09:59:00",
                amount: "2"
            },
            {
                city_id: "13",
                added_at: "2020-03-31 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-03-31 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-03-31 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-03-31 15:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-03-31 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-03-31 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-03-31 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-03-31 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-03-31 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-03-31 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-03-31 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-03-31 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-03-31 15:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-03-31 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-01 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-01 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-01 09:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-01 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-01 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-01 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-01 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-01 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-01 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-01 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-01 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-01 09:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-04-01 10:00:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-01 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-01 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-01 15:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-01 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-01 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-01 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-01 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-01 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-01 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-01 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-01 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-01 15:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-04-01 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-02 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-02 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-02 09:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-02 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-02 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-02 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-02 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-02 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-02 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-02 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-02 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-02 09:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-04-02 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-02 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-02 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-02 15:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-02 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-02 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-02 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-02 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-02 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-02 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-02 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-02 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-02 15:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-04-02 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-03 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-03 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-03 09:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-03 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-03 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-03 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-03 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-03 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-03 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-03 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-03 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-03 09:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-04-03 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-03 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-03 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-03 15:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-03 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-03 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-03 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-03 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-03 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-03 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-03 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-03 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-03 15:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-04-03 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-04 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-04 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-04 09:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-04 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-04 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-04 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-04 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-04 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-04 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-04 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-04 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-04 09:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-04-04 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-04 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-04 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-04 15:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-04 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-04 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-04 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-04 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-04 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-04 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-04 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-04 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-04 15:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-04-04 15:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-05 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-05 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-05 09:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-05 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-05 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-05 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-05 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-05 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-05 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-05 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-05 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-05 09:59:00",
                amount: "4"
            },
            {
                city_id: "13",
                added_at: "2020-04-05 09:59:00",
                amount: "0"
            },
            {
                city_id: "1",
                added_at: "2020-04-05 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-05 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-05 15:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-05 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-05 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-05 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-05 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-05 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-05 15:59:00",
                amount: "2"
            },
            {
                city_id: "10",
                added_at: "2020-04-05 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-05 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-05 15:59:00",
                amount: "10"
            },
            {
                city_id: "13",
                added_at: "2020-04-05 15:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-06 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-06 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-06 09:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-06 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-06 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-06 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-06 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-06 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-06 09:59:00",
                amount: "2"
            },
            {
                city_id: "10",
                added_at: "2020-04-06 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-06 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-06 09:59:00",
                amount: "10"
            },
            {
                city_id: "13",
                added_at: "2020-04-06 09:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-06 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-06 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-06 15:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-06 15:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-06 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-06 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-06 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-06 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-06 15:59:00",
                amount: "2"
            },
            {
                city_id: "10",
                added_at: "2020-04-06 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-06 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-06 15:59:00",
                amount: "10"
            },
            {
                city_id: "13",
                added_at: "2020-04-06 15:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-07 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-07 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-07 09:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-07 09:59:00",
                amount: "0"
            },
            {
                city_id: "5",
                added_at: "2020-04-07 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-07 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-07 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-07 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-07 09:59:00",
                amount: "2"
            },
            {
                city_id: "10",
                added_at: "2020-04-07 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-07 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-07 09:59:00",
                amount: "10"
            },
            {
                city_id: "13",
                added_at: "2020-04-07 09:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-07 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-07 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-07 15:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-07 15:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-07 15:59:00",
                amount: "1"
            },
            {
                city_id: "6",
                added_at: "2020-04-07 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-07 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-07 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-07 15:59:00",
                amount: "2"
            },
            {
                city_id: "10",
                added_at: "2020-04-07 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-07 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-07 15:59:00",
                amount: "11"
            },
            {
                city_id: "13",
                added_at: "2020-04-07 15:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-08 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-08 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-08 09:59:00",
                amount: "3"
            },
            {
                city_id: "4",
                added_at: "2020-04-08 09:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-08 09:59:00",
                amount: "1"
            },
            {
                city_id: "6",
                added_at: "2020-04-08 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-08 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-08 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-08 09:59:00",
                amount: "2"
            },
            {
                city_id: "10",
                added_at: "2020-04-08 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-08 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-08 09:59:00",
                amount: "11"
            },
            {
                city_id: "13",
                added_at: "2020-04-08 09:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-08 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-08 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-08 15:59:00",
                amount: "2"
            },
            {
                city_id: "4",
                added_at: "2020-04-08 15:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-08 15:59:00",
                amount: "1"
            },
            {
                city_id: "6",
                added_at: "2020-04-08 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-08 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-08 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-08 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-08 15:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-08 15:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-08 15:59:00",
                amount: "11"
            },
            {
                city_id: "13",
                added_at: "2020-04-08 15:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-09 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-09 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-09 09:59:00",
                amount: "2"
            },
            {
                city_id: "4",
                added_at: "2020-04-09 09:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-09 09:59:00",
                amount: "1"
            },
            {
                city_id: "6",
                added_at: "2020-04-09 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-09 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-09 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-09 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-09 09:59:00",
                amount: "0"
            },
            {
                city_id: "11",
                added_at: "2020-04-09 09:59:00",
                amount: "0"
            },
            {
                city_id: "12",
                added_at: "2020-04-09 09:59:00",
                amount: "11"
            },
            {
                city_id: "13",
                added_at: "2020-04-09 09:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-09 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-09 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-09 15:59:00",
                amount: "2"
            },
            {
                city_id: "4",
                added_at: "2020-04-09 15:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-09 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-09 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-09 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-09 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-09 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-09 15:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-09 15:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-09 15:59:00",
                amount: "12"
            },
            {
                city_id: "13",
                added_at: "2020-04-09 15:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-10 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-10 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-10 09:59:00",
                amount: "2"
            },
            {
                city_id: "4",
                added_at: "2020-04-10 09:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-10 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-10 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-10 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-10 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-10 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-10 09:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-10 09:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-10 09:59:00",
                amount: "12"
            },
            {
                city_id: "13",
                added_at: "2020-04-10 09:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-10 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-10 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-10 15:59:00",
                amount: "4"
            },
            {
                city_id: "4",
                added_at: "2020-04-10 15:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-10 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-10 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-10 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-10 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-10 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-10 15:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-10 15:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-10 15:59:00",
                amount: "14"
            },
            {
                city_id: "13",
                added_at: "2020-04-10 15:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-11 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-11 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-11 09:59:00",
                amount: "4"
            },
            {
                city_id: "4",
                added_at: "2020-04-11 09:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-11 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-11 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-11 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-11 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-11 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-11 09:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-11 09:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-11 09:59:00",
                amount: "14"
            },
            {
                city_id: "13",
                added_at: "2020-04-11 09:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-11 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-11 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-11 15:59:00",
                amount: "4"
            },
            {
                city_id: "4",
                added_at: "2020-04-11 15:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-11 15:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-11 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-11 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-11 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-11 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-11 15:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-11 15:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-11 15:59:00",
                amount: "14"
            },
            {
                city_id: "13",
                added_at: "2020-04-11 15:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-12 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-12 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-12 09:59:00",
                amount: "4"
            },
            {
                city_id: "4",
                added_at: "2020-04-12 09:59:00",
                amount: "1"
            },
            {
                city_id: "5",
                added_at: "2020-04-12 09:59:00",
                amount: "0"
            },
            {
                city_id: "6",
                added_at: "2020-04-12 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-12 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-12 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-12 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-12 09:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-12 09:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-12 09:59:00",
                amount: "14"
            },
            {
                city_id: "13",
                added_at: "2020-04-12 09:59:00",
                amount: "1"
            },
            {
                city_id: "1",
                added_at: "2020-04-12 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-12 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-12 15:59:00",
                amount: "4"
            },
            {
                city_id: "4",
                added_at: "2020-04-12 15:59:00",
                amount: "4"
            },
            {
                city_id: "5",
                added_at: "2020-04-12 15:59:00",
                amount: "1"
            },
            {
                city_id: "6",
                added_at: "2020-04-12 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-12 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-12 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-12 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-12 15:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-12 15:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-12 15:59:00",
                amount: "14"
            },
            {
                city_id: "13",
                added_at: "2020-04-12 15:59:00",
                amount: "2"
            },
            {
                city_id: "1",
                added_at: "2020-04-13 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-13 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-13 09:59:00",
                amount: "4"
            },
            {
                city_id: "4",
                added_at: "2020-04-13 09:59:00",
                amount: "4"
            },
            {
                city_id: "5",
                added_at: "2020-04-13 09:59:00",
                amount: "1"
            },
            {
                city_id: "6",
                added_at: "2020-04-13 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-13 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-13 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-13 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-13 09:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-13 09:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-13 09:59:00",
                amount: "14"
            },
            {
                city_id: "13",
                added_at: "2020-04-13 09:59:00",
                amount: "2"
            },
            {
                city_id: "1",
                added_at: "2020-04-13 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-13 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-13 15:59:00",
                amount: "4"
            },
            {
                city_id: "4",
                added_at: "2020-04-13 15:59:00",
                amount: "4"
            },
            {
                city_id: "5",
                added_at: "2020-04-13 15:59:00",
                amount: "1"
            },
            {
                city_id: "6",
                added_at: "2020-04-13 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-13 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-13 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-13 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-13 15:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-13 15:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-13 15:59:00",
                amount: "13"
            },
            {
                city_id: "13",
                added_at: "2020-04-13 15:59:00",
                amount: "2"
            },
            {
                city_id: "1",
                added_at: "2020-04-14 10:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-14 10:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-14 09:59:00",
                amount: "4"
            },
            {
                city_id: "4",
                added_at: "2020-04-14 09:59:00",
                amount: "4"
            },
            {
                city_id: "5",
                added_at: "2020-04-14 09:59:00",
                amount: "1"
            },
            {
                city_id: "6",
                added_at: "2020-04-14 09:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-14 09:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-14 09:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-14 09:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-14 09:59:00",
                amount: "1"
            },
            {
                city_id: "11",
                added_at: "2020-04-14 09:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-14 09:59:00",
                amount: "13"
            },
            {
                city_id: "13",
                added_at: "2020-04-14 09:59:00",
                amount: "2"
            },
            {
                city_id: "1",
                added_at: "2020-04-14 16:00:00",
                amount: "0"
            },
            {
                city_id: "2",
                added_at: "2020-04-14 16:00:00",
                amount: "0"
            },
            {
                city_id: "3",
                added_at: "2020-04-14 15:59:00",
                amount: "4"
            },
            {
                city_id: "4",
                added_at: "2020-04-14 15:59:00",
                amount: "4"
            },
            {
                city_id: "5",
                added_at: "2020-04-14 15:59:00",
                amount: "1"
            },
            {
                city_id: "6",
                added_at: "2020-04-14 15:59:00",
                amount: "0"
            },
            {
                city_id: "7",
                added_at: "2020-04-14 15:59:00",
                amount: "0"
            },
            {
                city_id: "8",
                added_at: "2020-04-14 15:59:00",
                amount: "0"
            },
            {
                city_id: "9",
                added_at: "2020-04-14 15:59:00",
                amount: "1"
            },
            {
                city_id: "10",
                added_at: "2020-04-14 15:59:00",
                amount: "2"
            },
            {
                city_id: "11",
                added_at: "2020-04-14 15:59:00",
                amount: "1"
            },
            {
                city_id: "12",
                added_at: "2020-04-14 15:59:00",
                amount: "14"
            },
            {
                city_id: "13",
                added_at: "2020-04-14 15:59:00",
                amount: "2"
            }
        ]

# add_dirawat = CovPositive.create(dirawats)

dirawats.each_with_index do | dirawat,index |
  cov_positive = CovPositive.new
  cov_positive.city_id = dirawat[:city_id]
  cov_positive.amount = dirawat[:amount]
  cov_positive.added_at = dirawat[:added_at]
  cov_positive.save


  city = City.find(cov_positive.city.id)

  if (city.cov_positive_count == 0)
    diff_amount = city.cov_positive_count + cov_positive.amount
  else
    diff_amount = cov_positive.amount - city.cov_positive_count
  end

  cov_positive.amount = diff_amount
  cov_positive.save

  city.cov_positive_count += cov_positive.amount
  city.save

end

puts "Add Sembuh"
sembuhs = [
        {
            city_id: "1",
            added_at: "2020-04-08 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-08 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-08 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-08 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-09 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-09 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-09 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-09 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-09 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-09 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-09 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-09 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-10 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-10 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-10 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-10 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-10 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-10 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-10 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-10 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-11 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-11 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-11 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-11 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-11 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-11 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-11 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-11 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-12 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-12 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-12 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-12 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-12 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-12 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-12 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-12 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-13 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-13 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-13 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-13 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "13",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-13 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-13 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-13 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-13 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-13 15:59:00",
            amount: "1"
        },
        {
            city_id: "13",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-14 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-14 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-14 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-14 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-14 09:59:00",
            amount: "1"
        },
        {
            city_id: "13",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-14 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-14 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-14 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-14 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-14 15:59:00",
            amount: "1"
        },
        {
            city_id: "13",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        }
    ]

# add_sembuh = CovRecovered.create(sembuh)

sembuhs.each do | sembuh |

  cov_recovered = CovRecovered.new
  cov_recovered.city_id = sembuh[:city_id]
  cov_recovered.amount = sembuh[:amount]
  cov_recovered.added_at = sembuh[:added_at]
  cov_recovered.save


  city = City.find(cov_recovered.city.id)

  if (city.cov_recovered_count == 0)
    diff_amount = city.cov_recovered_count + cov_recovered.amount
  else
    diff_amount = cov_recovered.amount - city.cov_recovered_count
  end

  cov_recovered.amount = diff_amount
  cov_recovered.save

  city.cov_recovered_count += cov_recovered.amount
  city.save

end

puts "Add Meninggal"
meninggals = [
        {
            city_id: "1",
            added_at: "2020-04-05 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-05 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-05 15:59:00",
            amount: "2"
        },
        {
            city_id: "13",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-06 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-06 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-06 09:59:00",
            amount: "2"
        },
        {
            city_id: "13",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-06 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-06 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-06 15:59:00",
            amount: "2"
        },
        {
            city_id: "13",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-07 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-07 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-07 09:59:00",
            amount: "2"
        },
        {
            city_id: "13",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-07 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-07 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-07 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-08 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-08 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-08 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-08 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-08 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-08 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-09 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-09 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-09 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-09 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-09 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-09 15:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-09 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-10 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-10 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-10 09:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-10 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-10 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-10 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-10 15:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-10 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-11 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-11 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-11 09:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-11 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-11 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-11 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-11 15:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-11 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-12 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-12 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-12 09:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-12 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-12 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-12 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-12 15:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-12 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-13 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-13 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-13 09:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-13 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-13 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-13 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-13 15:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-13 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-14 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-14 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-14 09:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-14 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-14 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-14 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-14 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-14 15:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-14 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        }
    ]

# add_meninggal = CovDied.create(meninggal)


meninggals.each do | meninggal |

  cov_died = CovDied.new
  cov_died.city_id = meninggal[:city_id]
  cov_died.amount = meninggal[:amount]
  cov_died.added_at = meninggal[:added_at]
  cov_died.save


  city = City.find(cov_died.city.id)

  if (city.cov_died_count == 0)
    diff_amount = city.cov_died_count + cov_died.amount
  else
    diff_amount = cov_died.amount - city.cov_died_count
  end

  cov_died.amount = diff_amount
  cov_died.save

  city.cov_died_count += cov_died.amount
  city.save

end

puts "Add Pdp"
pdps = [
        {
            city_id: "1",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-24 10:00:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-24 10:00:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-24 10:00:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-03-24 10:00:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-03-24 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-24 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-24 15:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-24 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-24 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-24 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-03-24 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-24 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-24 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-24 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-24 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-24 15:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-03-24 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-03-25 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-25 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-25 09:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-25 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-25 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-25 09:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-25 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-25 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-25 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-25 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-25 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-25 09:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-03-25 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-03-25 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-25 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-25 15:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-25 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-25 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-25 15:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-25 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-25 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-25 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-25 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-25 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-25 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-03-25 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-03-26 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-26 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-26 09:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-26 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-26 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-26 09:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-26 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-26 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-26 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-26 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-26 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-26 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-03-26 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-03-26 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-26 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-26 15:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-26 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-26 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-26 15:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-26 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-26 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-26 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-26 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-26 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-26 15:59:00",
            amount: "2"
        },
        {
            city_id: "13",
            added_at: "2020-03-26 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-03-27 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-27 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-27 09:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-27 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-27 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-27 09:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-27 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-27 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-27 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-27 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-27 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-27 09:59:00",
            amount: "2"
        },
        {
            city_id: "13",
            added_at: "2020-03-27 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-03-27 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-27 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-27 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-03-27 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-27 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-27 15:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-27 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-27 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-27 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-27 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-27 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-27 15:59:00",
            amount: "2"
        },
        {
            city_id: "13",
            added_at: "2020-03-27 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-03-28 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-28 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-28 09:59:00",
            amount: "3"
        },
        {
            city_id: "4",
            added_at: "2020-03-28 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-28 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-28 09:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-28 09:59:00",
            amount: "1"
        },
        {
            city_id: "8",
            added_at: "2020-03-28 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-28 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-28 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-28 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-28 09:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-03-28 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-03-28 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-28 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-28 15:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-28 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-28 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-28 15:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-28 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-28 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-28 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-28 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-28 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-28 15:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-03-28 15:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-03-29 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-29 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-29 09:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-29 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-29 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-29 09:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-29 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-29 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-29 09:59:00",
            amount: "2"
        },
        {
            city_id: "10",
            added_at: "2020-03-29 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-29 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-29 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-03-29 09:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-03-29 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-29 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-29 15:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-29 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-29 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-29 15:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-29 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-29 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-29 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-29 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-29 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-29 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-03-29 15:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-03-30 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-30 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-30 09:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-03-30 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-30 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-30 09:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-30 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-30 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-30 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-30 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-30 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-30 09:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-03-30 09:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-03-30 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-30 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-30 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-03-30 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-30 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-30 15:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-30 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-30 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-30 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-03-30 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-30 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-30 15:59:00",
            amount: "3"
        },
        {
            city_id: "13",
            added_at: "2020-03-30 15:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-03-31 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-31 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-31 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-03-31 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-31 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-31 09:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-31 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-31 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-31 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-31 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-31 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-31 09:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-03-31 09:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-03-31 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-03-31 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-03-31 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-03-31 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-03-31 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-03-31 15:59:00",
            amount: "1"
        },
        {
            city_id: "7",
            added_at: "2020-03-31 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-03-31 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-03-31 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-03-31 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-03-31 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-03-31 15:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-03-31 15:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-04-01 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-01 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-01 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-01 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-01 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-01 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-01 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-01 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-01 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-01 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-01 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-01 09:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-04-01 10:00:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-04-01 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-01 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-01 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-01 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-01 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-01 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-01 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-01 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-01 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-01 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-01 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-01 15:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-04-01 15:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-04-02 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-02 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-02 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-02 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-02 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-02 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-02 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-02 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-02 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-02 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-02 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-02 09:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-04-02 09:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-04-02 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-02 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-02 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-02 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-02 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-02 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-02 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-02 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-02 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-02 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-02 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-02 15:59:00",
            amount: "6"
        },
        {
            city_id: "13",
            added_at: "2020-04-02 15:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-04-03 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-03 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-03 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-03 09:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-03 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-03 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-03 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-03 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-03 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-03 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-03 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-03 09:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-04-03 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-03 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-03 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-03 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-03 15:59:00",
            amount: "0"
        },
        {
            city_id: "5",
            added_at: "2020-04-03 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-03 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-03 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-03 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-03 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-03 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-03 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-03 15:59:00",
            amount: "5"
        },
        {
            city_id: "13",
            added_at: "2020-04-03 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-04 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-04 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-04 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-04 09:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-04 09:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-04 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-04 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-04 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-04 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-04 09:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-04 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-04 09:59:00",
            amount: "6"
        },
        {
            city_id: "13",
            added_at: "2020-04-04 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-04 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-04 16:00:00",
            amount: "2"
        },
        {
            city_id: "3",
            added_at: "2020-04-04 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-04 15:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-04 15:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-04 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-04 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-04 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-04 15:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-04 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-04 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-04 15:59:00",
            amount: "5"
        },
        {
            city_id: "13",
            added_at: "2020-04-04 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-05 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-05 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-05 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-05 09:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-05 09:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-05 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-05 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-05 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-05 09:59:00",
            amount: "1"
        },
        {
            city_id: "10",
            added_at: "2020-04-05 09:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-05 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-05 09:59:00",
            amount: "5"
        },
        {
            city_id: "13",
            added_at: "2020-04-05 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-05 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-05 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-05 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-05 15:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-05 15:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-05 15:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-05 15:59:00",
            amount: "5"
        },
        {
            city_id: "13",
            added_at: "2020-04-05 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-06 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-06 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-06 09:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-06 09:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-06 09:59:00",
            amount: "2"
        },
        {
            city_id: "10",
            added_at: "2020-04-06 09:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-06 09:59:00",
            amount: "5"
        },
        {
            city_id: "13",
            added_at: "2020-04-06 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-06 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-06 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-06 15:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-04-06 15:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-06 15:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-06 15:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-06 15:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-06 15:59:00",
            amount: "8"
        },
        {
            city_id: "13",
            added_at: "2020-04-06 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-07 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-07 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-07 09:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-04-07 09:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-07 09:59:00",
            amount: "1"
        },
        {
            city_id: "6",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-07 09:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-07 09:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-07 09:59:00",
            amount: "8"
        },
        {
            city_id: "13",
            added_at: "2020-04-07 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-07 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-07 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-07 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-07 15:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-07 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-07 15:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-07 15:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-07 15:59:00",
            amount: "6"
        },
        {
            city_id: "13",
            added_at: "2020-04-07 15:59:00",
            amount: "1"
        },
        {
            city_id: "1",
            added_at: "2020-04-08 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-08 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-08 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-08 09:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-08 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-08 09:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-08 09:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-08 09:59:00",
            amount: "5"
        },
        {
            city_id: "13",
            added_at: "2020-04-08 09:59:00",
            amount: "1"
        },
        {
            city_id: "1",
            added_at: "2020-04-08 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-08 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-08 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-08 15:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-08 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-08 15:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-08 15:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-08 15:59:00",
            amount: "7"
        },
        {
            city_id: "13",
            added_at: "2020-04-08 15:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-04-09 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-09 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-09 09:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-09 09:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-09 09:59:00",
            amount: "4"
        },
        {
            city_id: "6",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-09 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-09 09:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-09 09:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-09 09:59:00",
            amount: "7"
        },
        {
            city_id: "13",
            added_at: "2020-04-09 09:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-04-09 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-09 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-09 15:59:00",
            amount: "1"
        },
        {
            city_id: "4",
            added_at: "2020-04-09 15:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "11",
            added_at: "2020-04-09 15:59:00",
            amount: "0"
        },
        {
            city_id: "12",
            added_at: "2020-04-09 15:59:00",
            amount: "7"
        },
        {
            city_id: "13",
            added_at: "2020-04-09 15:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-04-10 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-10 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-10 09:59:00",
            amount: "2"
        },
        {
            city_id: "4",
            added_at: "2020-04-10 09:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-10 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-10 09:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-10 09:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-10 09:59:00",
            amount: "5"
        },
        {
            city_id: "13",
            added_at: "2020-04-10 09:59:00",
            amount: "2"
        },
        {
            city_id: "1",
            added_at: "2020-04-10 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-10 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-10 15:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "7",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-10 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-10 15:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-10 15:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-10 15:59:00",
            amount: "5"
        },
        {
            city_id: "13",
            added_at: "2020-04-10 15:59:00",
            amount: "1"
        },
        {
            city_id: "1",
            added_at: "2020-04-11 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-11 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-11 09:59:00",
            amount: "1"
        },
        {
            city_id: "5",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-11 09:59:00",
            amount: "2"
        },
        {
            city_id: "7",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-11 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-11 09:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-11 09:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-11 09:59:00",
            amount: "5"
        },
        {
            city_id: "13",
            added_at: "2020-04-11 09:59:00",
            amount: "1"
        },
        {
            city_id: "1",
            added_at: "2020-04-11 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-11 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-11 15:59:00",
            amount: "1"
        },
        {
            city_id: "5",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-11 15:59:00",
            amount: "2"
        },
        {
            city_id: "7",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-11 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-11 15:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-11 15:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-11 15:59:00",
            amount: "7"
        },
        {
            city_id: "13",
            added_at: "2020-04-11 15:59:00",
            amount: "1"
        },
        {
            city_id: "1",
            added_at: "2020-04-12 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-12 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-12 09:59:00",
            amount: "1"
        },
        {
            city_id: "5",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-12 09:59:00",
            amount: "3"
        },
        {
            city_id: "7",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-12 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-12 09:59:00",
            amount: "1"
        },
        {
            city_id: "11",
            added_at: "2020-04-12 09:59:00",
            amount: "2"
        },
        {
            city_id: "12",
            added_at: "2020-04-12 09:59:00",
            amount: "7"
        },
        {
            city_id: "13",
            added_at: "2020-04-12 09:59:00",
            amount: "1"
        },
        {
            city_id: "1",
            added_at: "2020-04-12 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-12 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-12 15:59:00",
            amount: "1"
        },
        {
            city_id: "5",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-12 15:59:00",
            amount: "3"
        },
        {
            city_id: "7",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-12 15:59:00",
            amount: "2"
        },
        {
            city_id: "11",
            added_at: "2020-04-12 15:59:00",
            amount: "1"
        },
        {
            city_id: "12",
            added_at: "2020-04-12 15:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-04-12 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-13 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-13 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-13 09:59:00",
            amount: "2"
        },
        {
            city_id: "5",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-13 09:59:00",
            amount: "3"
        },
        {
            city_id: "7",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-13 09:59:00",
            amount: "2"
        },
        {
            city_id: "11",
            added_at: "2020-04-13 09:59:00",
            amount: "2"
        },
        {
            city_id: "12",
            added_at: "2020-04-13 09:59:00",
            amount: "4"
        },
        {
            city_id: "13",
            added_at: "2020-04-13 09:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-13 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-13 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-13 15:59:00",
            amount: "1"
        },
        {
            city_id: "5",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-13 15:59:00",
            amount: "3"
        },
        {
            city_id: "7",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "9",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-13 15:59:00",
            amount: "3"
        },
        {
            city_id: "11",
            added_at: "2020-04-13 15:59:00",
            amount: "2"
        },
        {
            city_id: "12",
            added_at: "2020-04-13 15:59:00",
            amount: "6"
        },
        {
            city_id: "13",
            added_at: "2020-04-13 15:59:00",
            amount: "0"
        },
        {
            city_id: "1",
            added_at: "2020-04-14 10:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-14 10:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-14 09:59:00",
            amount: "1"
        },
        {
            city_id: "5",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-14 09:59:00",
            amount: "3"
        },
        {
            city_id: "7",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-14 09:59:00",
            amount: "1"
        },
        {
            city_id: "9",
            added_at: "2020-04-14 09:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-14 09:59:00",
            amount: "3"
        },
        {
            city_id: "11",
            added_at: "2020-04-14 09:59:00",
            amount: "2"
        },
        {
            city_id: "12",
            added_at: "2020-04-14 09:59:00",
            amount: "6"
        },
        {
            city_id: "13",
            added_at: "2020-04-14 09:59:00",
            amount: "3"
        },
        {
            city_id: "1",
            added_at: "2020-04-14 16:00:00",
            amount: "0"
        },
        {
            city_id: "2",
            added_at: "2020-04-14 16:00:00",
            amount: "0"
        },
        {
            city_id: "3",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "4",
            added_at: "2020-04-14 15:59:00",
            amount: "1"
        },
        {
            city_id: "5",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "6",
            added_at: "2020-04-14 15:59:00",
            amount: "3"
        },
        {
            city_id: "7",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "8",
            added_at: "2020-04-14 15:59:00",
            amount: "1"
        },
        {
            city_id: "9",
            added_at: "2020-04-14 15:59:00",
            amount: "0"
        },
        {
            city_id: "10",
            added_at: "2020-04-14 15:59:00",
            amount: "2"
        },
        {
            city_id: "11",
            added_at: "2020-04-14 15:59:00",
            amount: "2"
        },
        {
            city_id: "12",
            added_at: "2020-04-14 15:59:00",
            amount: "6"
        },
        {
            city_id: "13",
            added_at: "2020-04-14 15:59:00",
            amount: "3"
        }
    ]

# add_pdp = CovPdp.create(pdps)


pdps.each do | pdp |

  cov_pdp = CovPdp.new
  cov_pdp.city_id = pdp[:city_id]
  cov_pdp.amount = pdp[:amount]
  cov_pdp.added_at = pdp[:added_at]
  cov_pdp.save


  city = City.find(cov_pdp.city.id)

  if (city.cov_pdp_count == 0)
    diff_amount = city.cov_pdp_count + cov_pdp.amount
  else
    diff_amount = cov_pdp.amount - city.cov_pdp_count
  end

  cov_pdp.amount = diff_amount
  cov_pdp.save

  city.cov_pdp_count += cov_pdp.amount
  city.save

end


puts "Add Odp"
odps = [
        {
            city_id: "1",
            added_at: "2020-03-24 10:00:00",
            amount: "6"
        },
        {
            city_id: "2",
            added_at: "2020-03-24 10:00:00",
            amount: "54"
        },
        {
            city_id: "3",
            added_at: "2020-03-24 10:00:00",
            amount: "72"
        },
        {
            city_id: "4",
            added_at: "2020-03-24 10:00:00",
            amount: "60"
        },
        {
            city_id: "5",
            added_at: "2020-03-24 10:00:00",
            amount: "4"
        },
        {
            city_id: "6",
            added_at: "2020-03-24 10:00:00",
            amount: "70"
        },
        {
            city_id: "7",
            added_at: "2020-03-24 10:00:00",
            amount: "88"
        },
        {
            city_id: "8",
            added_at: "2020-03-24 10:00:00",
            amount: "10"
        },
        {
            city_id: "9",
            added_at: "2020-03-24 10:00:00",
            amount: "45"
        },
        {
            city_id: "10",
            added_at: "2020-03-24 10:00:00",
            amount: "30"
        },
        {
            city_id: "11",
            added_at: "2020-03-24 10:00:00",
            amount: "29"
        },
        {
            city_id: "12",
            added_at: "2020-03-24 10:00:00",
            amount: "42"
        },
        {
            city_id: "13",
            added_at: "2020-03-24 10:00:00",
            amount: "282"
        },
        {
            city_id: "1",
            added_at: "2020-03-24 16:00:00",
            amount: "6"
        },
        {
            city_id: "2",
            added_at: "2020-03-24 16:00:00",
            amount: "54"
        },
        {
            city_id: "3",
            added_at: "2020-03-24 15:59:00",
            amount: "72"
        },
        {
            city_id: "4",
            added_at: "2020-03-24 15:59:00",
            amount: "60"
        },
        {
            city_id: "5",
            added_at: "2020-03-24 15:59:00",
            amount: "4"
        },
        {
            city_id: "6",
            added_at: "2020-03-24 15:59:00",
            amount: "70"
        },
        {
            city_id: "7",
            added_at: "2020-03-24 15:59:00",
            amount: "89"
        },
        {
            city_id: "8",
            added_at: "2020-03-24 15:59:00",
            amount: "10"
        },
        {
            city_id: "9",
            added_at: "2020-03-24 15:59:00",
            amount: "141"
        },
        {
            city_id: "10",
            added_at: "2020-03-24 15:59:00",
            amount: "30"
        },
        {
            city_id: "11",
            added_at: "2020-03-24 15:59:00",
            amount: "29"
        },
        {
            city_id: "12",
            added_at: "2020-03-24 15:59:00",
            amount: "54"
        },
        {
            city_id: "13",
            added_at: "2020-03-24 15:59:00",
            amount: "97"
        },
        {
            city_id: "1",
            added_at: "2020-03-25 10:00:00",
            amount: "6"
        },
        {
            city_id: "2",
            added_at: "2020-03-25 10:00:00",
            amount: "54"
        },
        {
            city_id: "3",
            added_at: "2020-03-25 09:59:00",
            amount: "72"
        },
        {
            city_id: "4",
            added_at: "2020-03-25 09:59:00",
            amount: "60"
        },
        {
            city_id: "5",
            added_at: "2020-03-25 09:59:00",
            amount: "4"
        },
        {
            city_id: "6",
            added_at: "2020-03-25 09:59:00",
            amount: "67"
        },
        {
            city_id: "7",
            added_at: "2020-03-25 09:59:00",
            amount: "118"
        },
        {
            city_id: "8",
            added_at: "2020-03-25 09:59:00",
            amount: "10"
        },
        {
            city_id: "9",
            added_at: "2020-03-25 09:59:00",
            amount: "141"
        },
        {
            city_id: "10",
            added_at: "2020-03-25 09:59:00",
            amount: "40"
        },
        {
            city_id: "11",
            added_at: "2020-03-25 09:59:00",
            amount: "49"
        },
        {
            city_id: "12",
            added_at: "2020-03-25 09:59:00",
            amount: "67"
        },
        {
            city_id: "13",
            added_at: "2020-03-25 09:59:00",
            amount: "97"
        },
        {
            city_id: "1",
            added_at: "2020-03-25 16:00:00",
            amount: "7"
        },
        {
            city_id: "2",
            added_at: "2020-03-25 16:00:00",
            amount: "69"
        },
        {
            city_id: "3",
            added_at: "2020-03-25 15:59:00",
            amount: "81"
        },
        {
            city_id: "4",
            added_at: "2020-03-25 15:59:00",
            amount: "64"
        },
        {
            city_id: "5",
            added_at: "2020-03-25 15:59:00",
            amount: "4"
        },
        {
            city_id: "6",
            added_at: "2020-03-25 15:59:00",
            amount: "82"
        },
        {
            city_id: "7",
            added_at: "2020-03-25 15:59:00",
            amount: "118"
        },
        {
            city_id: "8",
            added_at: "2020-03-25 15:59:00",
            amount: "16"
        },
        {
            city_id: "9",
            added_at: "2020-03-25 15:59:00",
            amount: "141"
        },
        {
            city_id: "10",
            added_at: "2020-03-25 15:59:00",
            amount: "40"
        },
        {
            city_id: "11",
            added_at: "2020-03-25 15:59:00",
            amount: "49"
        },
        {
            city_id: "12",
            added_at: "2020-03-25 15:59:00",
            amount: "86"
        },
        {
            city_id: "13",
            added_at: "2020-03-25 15:59:00",
            amount: "97"
        },
        {
            city_id: "1",
            added_at: "2020-03-26 10:00:00",
            amount: "7"
        },
        {
            city_id: "2",
            added_at: "2020-03-26 10:00:00",
            amount: "89"
        },
        {
            city_id: "3",
            added_at: "2020-03-26 09:59:00",
            amount: "81"
        },
        {
            city_id: "4",
            added_at: "2020-03-26 09:59:00",
            amount: "64"
        },
        {
            city_id: "5",
            added_at: "2020-03-26 09:59:00",
            amount: "4"
        },
        {
            city_id: "6",
            added_at: "2020-03-26 09:59:00",
            amount: "73"
        },
        {
            city_id: "7",
            added_at: "2020-03-26 09:59:00",
            amount: "118"
        },
        {
            city_id: "8",
            added_at: "2020-03-26 09:59:00",
            amount: "19"
        },
        {
            city_id: "9",
            added_at: "2020-03-26 09:59:00",
            amount: "148"
        },
        {
            city_id: "10",
            added_at: "2020-03-26 09:59:00",
            amount: "40"
        },
        {
            city_id: "11",
            added_at: "2020-03-26 09:59:00",
            amount: "49"
        },
        {
            city_id: "12",
            added_at: "2020-03-26 09:59:00",
            amount: "81"
        },
        {
            city_id: "13",
            added_at: "2020-03-26 09:59:00",
            amount: "97"
        },
        {
            city_id: "1",
            added_at: "2020-03-26 16:00:00",
            amount: "13"
        },
        {
            city_id: "2",
            added_at: "2020-03-26 16:00:00",
            amount: "89"
        },
        {
            city_id: "3",
            added_at: "2020-03-26 15:59:00",
            amount: "96"
        },
        {
            city_id: "4",
            added_at: "2020-03-26 15:59:00",
            amount: "64"
        },
        {
            city_id: "5",
            added_at: "2020-03-26 15:59:00",
            amount: "4"
        },
        {
            city_id: "6",
            added_at: "2020-03-26 15:59:00",
            amount: "55"
        },
        {
            city_id: "7",
            added_at: "2020-03-26 15:59:00",
            amount: "118"
        },
        {
            city_id: "8",
            added_at: "2020-03-26 15:59:00",
            amount: "22"
        },
        {
            city_id: "9",
            added_at: "2020-03-26 15:59:00",
            amount: "161"
        },
        {
            city_id: "10",
            added_at: "2020-03-26 15:59:00",
            amount: "23"
        },
        {
            city_id: "11",
            added_at: "2020-03-26 15:59:00",
            amount: "53"
        },
        {
            city_id: "12",
            added_at: "2020-03-26 15:59:00",
            amount: "81"
        },
        {
            city_id: "13",
            added_at: "2020-03-26 15:59:00",
            amount: "120"
        },
        {
            city_id: "1",
            added_at: "2020-03-27 10:00:00",
            amount: "22"
        },
        {
            city_id: "2",
            added_at: "2020-03-27 10:00:00",
            amount: "92"
        },
        {
            city_id: "3",
            added_at: "2020-03-27 09:59:00",
            amount: "96"
        },
        {
            city_id: "4",
            added_at: "2020-03-27 09:59:00",
            amount: "64"
        },
        {
            city_id: "5",
            added_at: "2020-03-27 09:59:00",
            amount: "5"
        },
        {
            city_id: "6",
            added_at: "2020-03-27 09:59:00",
            amount: "64"
        },
        {
            city_id: "7",
            added_at: "2020-03-27 09:59:00",
            amount: "118"
        },
        {
            city_id: "8",
            added_at: "2020-03-27 09:59:00",
            amount: "22"
        },
        {
            city_id: "9",
            added_at: "2020-03-27 09:59:00",
            amount: "161"
        },
        {
            city_id: "10",
            added_at: "2020-03-27 09:59:00",
            amount: "23"
        },
        {
            city_id: "11",
            added_at: "2020-03-27 09:59:00",
            amount: "53"
        },
        {
            city_id: "12",
            added_at: "2020-03-27 09:59:00",
            amount: "81"
        },
        {
            city_id: "13",
            added_at: "2020-03-27 09:59:00",
            amount: "130"
        },
        {
            city_id: "1",
            added_at: "2020-03-27 16:00:00",
            amount: "22"
        },
        {
            city_id: "2",
            added_at: "2020-03-27 16:00:00",
            amount: "92"
        },
        {
            city_id: "3",
            added_at: "2020-03-27 15:59:00",
            amount: "96"
        },
        {
            city_id: "4",
            added_at: "2020-03-27 15:59:00",
            amount: "64"
        },
        {
            city_id: "5",
            added_at: "2020-03-27 15:59:00",
            amount: "8"
        },
        {
            city_id: "6",
            added_at: "2020-03-27 15:59:00",
            amount: "76"
        },
        {
            city_id: "7",
            added_at: "2020-03-27 15:59:00",
            amount: "129"
        },
        {
            city_id: "8",
            added_at: "2020-03-27 15:59:00",
            amount: "24"
        },
        {
            city_id: "9",
            added_at: "2020-03-27 15:59:00",
            amount: "167"
        },
        {
            city_id: "10",
            added_at: "2020-03-27 15:59:00",
            amount: "23"
        },
        {
            city_id: "11",
            added_at: "2020-03-27 15:59:00",
            amount: "65"
        },
        {
            city_id: "12",
            added_at: "2020-03-27 15:59:00",
            amount: "85"
        },
        {
            city_id: "13",
            added_at: "2020-03-27 15:59:00",
            amount: "142"
        },
        {
            city_id: "1",
            added_at: "2020-03-28 10:00:00",
            amount: "22"
        },
        {
            city_id: "2",
            added_at: "2020-03-28 10:00:00",
            amount: "100"
        },
        {
            city_id: "3",
            added_at: "2020-03-28 09:59:00",
            amount: "111"
        },
        {
            city_id: "4",
            added_at: "2020-03-28 09:59:00",
            amount: "64"
        },
        {
            city_id: "5",
            added_at: "2020-03-28 09:59:00",
            amount: "13"
        },
        {
            city_id: "6",
            added_at: "2020-03-28 09:59:00",
            amount: "76"
        },
        {
            city_id: "7",
            added_at: "2020-03-28 09:59:00",
            amount: "129"
        },
        {
            city_id: "8",
            added_at: "2020-03-28 09:59:00",
            amount: "24"
        },
        {
            city_id: "9",
            added_at: "2020-03-28 09:59:00",
            amount: "165"
        },
        {
            city_id: "10",
            added_at: "2020-03-28 09:59:00",
            amount: "23"
        },
        {
            city_id: "11",
            added_at: "2020-03-28 09:59:00",
            amount: "65"
        },
        {
            city_id: "12",
            added_at: "2020-03-28 09:59:00",
            amount: "83"
        },
        {
            city_id: "13",
            added_at: "2020-03-28 09:59:00",
            amount: "142"
        },
        {
            city_id: "1",
            added_at: "2020-03-28 16:00:00",
            amount: "34"
        },
        {
            city_id: "2",
            added_at: "2020-03-28 16:00:00",
            amount: "100"
        },
        {
            city_id: "3",
            added_at: "2020-03-28 15:59:00",
            amount: "111"
        },
        {
            city_id: "4",
            added_at: "2020-03-28 15:59:00",
            amount: "67"
        },
        {
            city_id: "5",
            added_at: "2020-03-28 15:59:00",
            amount: "13"
        },
        {
            city_id: "6",
            added_at: "2020-03-28 15:59:00",
            amount: "91"
        },
        {
            city_id: "7",
            added_at: "2020-03-28 15:59:00",
            amount: "129"
        },
        {
            city_id: "8",
            added_at: "2020-03-28 15:59:00",
            amount: "28"
        },
        {
            city_id: "9",
            added_at: "2020-03-28 15:59:00",
            amount: "172"
        },
        {
            city_id: "10",
            added_at: "2020-03-28 15:59:00",
            amount: "23"
        },
        {
            city_id: "11",
            added_at: "2020-03-28 15:59:00",
            amount: "71"
        },
        {
            city_id: "12",
            added_at: "2020-03-28 15:59:00",
            amount: "90"
        },
        {
            city_id: "13",
            added_at: "2020-03-28 15:59:00",
            amount: "150"
        },
        {
            city_id: "1",
            added_at: "2020-03-29 10:00:00",
            amount: "34"
        },
        {
            city_id: "2",
            added_at: "2020-03-29 10:00:00",
            amount: "103"
        },
        {
            city_id: "3",
            added_at: "2020-03-29 09:59:00",
            amount: "115"
        },
        {
            city_id: "4",
            added_at: "2020-03-29 09:59:00",
            amount: "64"
        },
        {
            city_id: "5",
            added_at: "2020-03-29 09:59:00",
            amount: "17"
        },
        {
            city_id: "6",
            added_at: "2020-03-29 09:59:00",
            amount: "93"
        },
        {
            city_id: "7",
            added_at: "2020-03-29 09:59:00",
            amount: "125"
        },
        {
            city_id: "8",
            added_at: "2020-03-29 09:59:00",
            amount: "22"
        },
        {
            city_id: "9",
            added_at: "2020-03-29 09:59:00",
            amount: "178"
        },
        {
            city_id: "10",
            added_at: "2020-03-29 09:59:00",
            amount: "44"
        },
        {
            city_id: "11",
            added_at: "2020-03-29 09:59:00",
            amount: "71"
        },
        {
            city_id: "12",
            added_at: "2020-03-29 09:59:00",
            amount: "107"
        },
        {
            city_id: "13",
            added_at: "2020-03-29 09:59:00",
            amount: "159"
        },
        {
            city_id: "1",
            added_at: "2020-03-29 16:00:00",
            amount: "34"
        },
        {
            city_id: "2",
            added_at: "2020-03-29 16:00:00",
            amount: "103"
        },
        {
            city_id: "3",
            added_at: "2020-03-29 15:59:00",
            amount: "115"
        },
        {
            city_id: "4",
            added_at: "2020-03-29 15:59:00",
            amount: "66"
        },
        {
            city_id: "5",
            added_at: "2020-03-29 15:59:00",
            amount: "17"
        },
        {
            city_id: "6",
            added_at: "2020-03-29 15:59:00",
            amount: "93"
        },
        {
            city_id: "7",
            added_at: "2020-03-29 15:59:00",
            amount: "124"
        },
        {
            city_id: "8",
            added_at: "2020-03-29 15:59:00",
            amount: "28"
        },
        {
            city_id: "9",
            added_at: "2020-03-29 15:59:00",
            amount: "178"
        },
        {
            city_id: "10",
            added_at: "2020-03-29 15:59:00",
            amount: "48"
        },
        {
            city_id: "11",
            added_at: "2020-03-29 15:59:00",
            amount: "71"
        },
        {
            city_id: "12",
            added_at: "2020-03-29 15:59:00",
            amount: "107"
        },
        {
            city_id: "13",
            added_at: "2020-03-29 15:59:00",
            amount: "159"
        },
        {
            city_id: "1",
            added_at: "2020-03-30 10:00:00",
            amount: "40"
        },
        {
            city_id: "2",
            added_at: "2020-03-30 10:00:00",
            amount: "116"
        },
        {
            city_id: "3",
            added_at: "2020-03-30 09:59:00",
            amount: "114"
        },
        {
            city_id: "4",
            added_at: "2020-03-30 09:59:00",
            amount: "66"
        },
        {
            city_id: "5",
            added_at: "2020-03-30 09:59:00",
            amount: "35"
        },
        {
            city_id: "6",
            added_at: "2020-03-30 09:59:00",
            amount: "94"
        },
        {
            city_id: "7",
            added_at: "2020-03-30 09:59:00",
            amount: "124"
        },
        {
            city_id: "8",
            added_at: "2020-03-30 09:59:00",
            amount: "28"
        },
        {
            city_id: "9",
            added_at: "2020-03-30 09:59:00",
            amount: "133"
        },
        {
            city_id: "10",
            added_at: "2020-03-30 09:59:00",
            amount: "51"
        },
        {
            city_id: "11",
            added_at: "2020-03-30 09:59:00",
            amount: "80"
        },
        {
            city_id: "12",
            added_at: "2020-03-30 09:59:00",
            amount: "107"
        },
        {
            city_id: "13",
            added_at: "2020-03-30 09:59:00",
            amount: "112"
        },
        {
            city_id: "1",
            added_at: "2020-03-30 16:00:00",
            amount: "40"
        },
        {
            city_id: "2",
            added_at: "2020-03-30 16:00:00",
            amount: "104"
        },
        {
            city_id: "3",
            added_at: "2020-03-30 15:59:00",
            amount: "114"
        },
        {
            city_id: "4",
            added_at: "2020-03-30 15:59:00",
            amount: "65"
        },
        {
            city_id: "5",
            added_at: "2020-03-30 15:59:00",
            amount: "35"
        },
        {
            city_id: "6",
            added_at: "2020-03-30 15:59:00",
            amount: "94"
        },
        {
            city_id: "7",
            added_at: "2020-03-30 15:59:00",
            amount: "104"
        },
        {
            city_id: "8",
            added_at: "2020-03-30 15:59:00",
            amount: "29"
        },
        {
            city_id: "9",
            added_at: "2020-03-30 15:59:00",
            amount: "173"
        },
        {
            city_id: "10",
            added_at: "2020-03-30 15:59:00",
            amount: "51"
        },
        {
            city_id: "11",
            added_at: "2020-03-30 15:59:00",
            amount: "71"
        },
        {
            city_id: "12",
            added_at: "2020-03-30 15:59:00",
            amount: "116"
        },
        {
            city_id: "13",
            added_at: "2020-03-30 15:59:00",
            amount: "166"
        },
        {
            city_id: "1",
            added_at: "2020-03-31 10:00:00",
            amount: "50"
        },
        {
            city_id: "2",
            added_at: "2020-03-31 10:00:00",
            amount: "109"
        },
        {
            city_id: "3",
            added_at: "2020-03-31 09:59:00",
            amount: "118"
        },
        {
            city_id: "4",
            added_at: "2020-03-31 09:59:00",
            amount: "65"
        },
        {
            city_id: "5",
            added_at: "2020-03-31 09:59:00",
            amount: "41"
        },
        {
            city_id: "6",
            added_at: "2020-03-31 09:59:00",
            amount: "101"
        },
        {
            city_id: "7",
            added_at: "2020-03-31 09:59:00",
            amount: "104"
        },
        {
            city_id: "8",
            added_at: "2020-03-31 09:59:00",
            amount: "37"
        },
        {
            city_id: "9",
            added_at: "2020-03-31 09:59:00",
            amount: "173"
        },
        {
            city_id: "10",
            added_at: "2020-03-31 09:59:00",
            amount: "68"
        },
        {
            city_id: "11",
            added_at: "2020-03-31 09:59:00",
            amount: "80"
        },
        {
            city_id: "12",
            added_at: "2020-03-31 09:59:00",
            amount: "118"
        },
        {
            city_id: "13",
            added_at: "2020-03-31 09:59:00",
            amount: "172"
        },
        {
            city_id: "1",
            added_at: "2020-03-31 16:00:00",
            amount: "57"
        },
        {
            city_id: "2",
            added_at: "2020-03-31 16:00:00",
            amount: "109"
        },
        {
            city_id: "3",
            added_at: "2020-03-31 15:59:00",
            amount: "118"
        },
        {
            city_id: "4",
            added_at: "2020-03-31 15:59:00",
            amount: "63"
        },
        {
            city_id: "5",
            added_at: "2020-03-31 15:59:00",
            amount: "41"
        },
        {
            city_id: "6",
            added_at: "2020-03-31 15:59:00",
            amount: "101"
        },
        {
            city_id: "7",
            added_at: "2020-03-31 15:59:00",
            amount: "91"
        },
        {
            city_id: "8",
            added_at: "2020-03-31 15:59:00",
            amount: "37"
        },
        {
            city_id: "9",
            added_at: "2020-03-31 15:59:00",
            amount: "173"
        },
        {
            city_id: "10",
            added_at: "2020-03-31 15:59:00",
            amount: "71"
        },
        {
            city_id: "11",
            added_at: "2020-03-31 15:59:00",
            amount: "80"
        },
        {
            city_id: "12",
            added_at: "2020-03-31 15:59:00",
            amount: "118"
        },
        {
            city_id: "13",
            added_at: "2020-03-31 15:59:00",
            amount: "172"
        },
        {
            city_id: "1",
            added_at: "2020-04-01 10:00:00",
            amount: "57"
        },
        {
            city_id: "2",
            added_at: "2020-04-01 10:00:00",
            amount: "113"
        },
        {
            city_id: "3",
            added_at: "2020-04-01 09:59:00",
            amount: "128"
        },
        {
            city_id: "4",
            added_at: "2020-04-01 09:59:00",
            amount: "66"
        },
        {
            city_id: "5",
            added_at: "2020-04-01 09:59:00",
            amount: "42"
        },
        {
            city_id: "6",
            added_at: "2020-04-01 09:59:00",
            amount: "85"
        },
        {
            city_id: "7",
            added_at: "2020-04-01 09:59:00",
            amount: "91"
        },
        {
            city_id: "8",
            added_at: "2020-04-01 09:59:00",
            amount: "37"
        },
        {
            city_id: "9",
            added_at: "2020-04-01 09:59:00",
            amount: "164"
        },
        {
            city_id: "10",
            added_at: "2020-04-01 09:59:00",
            amount: "89"
        },
        {
            city_id: "11",
            added_at: "2020-04-01 09:59:00",
            amount: "95"
        },
        {
            city_id: "12",
            added_at: "2020-04-01 09:59:00",
            amount: "121"
        },
        {
            city_id: "13",
            added_at: "2020-04-01 09:59:00",
            amount: "188"
        },
        {
            city_id: "1",
            added_at: "2020-04-01 16:00:00",
            amount: "63"
        },
        {
            city_id: "2",
            added_at: "2020-04-01 16:00:00",
            amount: "118"
        },
        {
            city_id: "3",
            added_at: "2020-04-01 15:59:00",
            amount: "128"
        },
        {
            city_id: "4",
            added_at: "2020-04-01 15:59:00",
            amount: "66"
        },
        {
            city_id: "5",
            added_at: "2020-04-01 15:59:00",
            amount: "39"
        },
        {
            city_id: "6",
            added_at: "2020-04-01 15:59:00",
            amount: "85"
        },
        {
            city_id: "7",
            added_at: "2020-04-01 15:59:00",
            amount: "87"
        },
        {
            city_id: "8",
            added_at: "2020-04-01 15:59:00",
            amount: "37"
        },
        {
            city_id: "9",
            added_at: "2020-04-01 15:59:00",
            amount: "164"
        },
        {
            city_id: "10",
            added_at: "2020-04-01 15:59:00",
            amount: "114"
        },
        {
            city_id: "11",
            added_at: "2020-04-01 15:59:00",
            amount: "95"
        },
        {
            city_id: "12",
            added_at: "2020-04-01 15:59:00",
            amount: "121"
        },
        {
            city_id: "13",
            added_at: "2020-04-01 15:59:00",
            amount: "188"
        },
        {
            city_id: "1",
            added_at: "2020-04-02 10:00:00",
            amount: "63"
        },
        {
            city_id: "2",
            added_at: "2020-04-02 10:00:00",
            amount: "120"
        },
        {
            city_id: "3",
            added_at: "2020-04-02 09:59:00",
            amount: "127"
        },
        {
            city_id: "4",
            added_at: "2020-04-02 09:59:00",
            amount: "66"
        },
        {
            city_id: "5",
            added_at: "2020-04-02 09:59:00",
            amount: "39"
        },
        {
            city_id: "6",
            added_at: "2020-04-02 09:59:00",
            amount: "92"
        },
        {
            city_id: "7",
            added_at: "2020-04-02 09:59:00",
            amount: "87"
        },
        {
            city_id: "8",
            added_at: "2020-04-02 09:59:00",
            amount: "30"
        },
        {
            city_id: "9",
            added_at: "2020-04-02 09:59:00",
            amount: "165"
        },
        {
            city_id: "10",
            added_at: "2020-04-02 09:59:00",
            amount: "121"
        },
        {
            city_id: "11",
            added_at: "2020-04-02 09:59:00",
            amount: "95"
        },
        {
            city_id: "12",
            added_at: "2020-04-02 09:59:00",
            amount: "126"
        },
        {
            city_id: "13",
            added_at: "2020-04-02 09:59:00",
            amount: "192"
        },
        {
            city_id: "1",
            added_at: "2020-04-02 16:00:00",
            amount: "63"
        },
        {
            city_id: "2",
            added_at: "2020-04-02 16:00:00",
            amount: "125"
        },
        {
            city_id: "3",
            added_at: "2020-04-02 15:59:00",
            amount: "127"
        },
        {
            city_id: "4",
            added_at: "2020-04-02 15:59:00",
            amount: "69"
        },
        {
            city_id: "5",
            added_at: "2020-04-02 15:59:00",
            amount: "39"
        },
        {
            city_id: "6",
            added_at: "2020-04-02 15:59:00",
            amount: "92"
        },
        {
            city_id: "7",
            added_at: "2020-04-02 15:59:00",
            amount: "87"
        },
        {
            city_id: "8",
            added_at: "2020-04-02 15:59:00",
            amount: "30"
        },
        {
            city_id: "9",
            added_at: "2020-04-02 15:59:00",
            amount: "165"
        },
        {
            city_id: "10",
            added_at: "2020-04-02 15:59:00",
            amount: "125"
        },
        {
            city_id: "11",
            added_at: "2020-04-02 15:59:00",
            amount: "95"
        },
        {
            city_id: "12",
            added_at: "2020-04-02 15:59:00",
            amount: "126"
        },
        {
            city_id: "13",
            added_at: "2020-04-02 15:59:00",
            amount: "195"
        },
        {
            city_id: "1",
            added_at: "2020-04-03 10:00:00",
            amount: "65"
        },
        {
            city_id: "2",
            added_at: "2020-04-03 10:00:00",
            amount: "116"
        },
        {
            city_id: "3",
            added_at: "2020-04-03 09:59:00",
            amount: "127"
        },
        {
            city_id: "4",
            added_at: "2020-04-03 09:59:00",
            amount: "69"
        },
        {
            city_id: "5",
            added_at: "2020-04-03 09:59:00",
            amount: "40"
        },
        {
            city_id: "6",
            added_at: "2020-04-03 09:59:00",
            amount: "92"
        },
        {
            city_id: "7",
            added_at: "2020-04-03 09:59:00",
            amount: "87"
        },
        {
            city_id: "8",
            added_at: "2020-04-03 09:59:00",
            amount: "30"
        },
        {
            city_id: "9",
            added_at: "2020-04-03 09:59:00",
            amount: "171"
        },
        {
            city_id: "10",
            added_at: "2020-04-03 09:59:00",
            amount: "134"
        },
        {
            city_id: "11",
            added_at: "2020-04-03 09:59:00",
            amount: "97"
        },
        {
            city_id: "12",
            added_at: "2020-04-03 09:59:00",
            amount: "127"
        },
        {
            city_id: "13",
            added_at: "2020-04-03 09:59:00",
            amount: "201"
        },
        {
            city_id: "1",
            added_at: "2020-04-03 16:00:00",
            amount: "66"
        },
        {
            city_id: "2",
            added_at: "2020-04-03 16:00:00",
            amount: "116"
        },
        {
            city_id: "3",
            added_at: "2020-04-03 15:59:00",
            amount: "127"
        },
        {
            city_id: "4",
            added_at: "2020-04-03 15:59:00",
            amount: "70"
        },
        {
            city_id: "5",
            added_at: "2020-04-03 15:59:00",
            amount: "40"
        },
        {
            city_id: "6",
            added_at: "2020-04-03 15:59:00",
            amount: "92"
        },
        {
            city_id: "7",
            added_at: "2020-04-03 15:59:00",
            amount: "74"
        },
        {
            city_id: "8",
            added_at: "2020-04-03 15:59:00",
            amount: "33"
        },
        {
            city_id: "9",
            added_at: "2020-04-03 15:59:00",
            amount: "171"
        },
        {
            city_id: "10",
            added_at: "2020-04-03 15:59:00",
            amount: "139"
        },
        {
            city_id: "11",
            added_at: "2020-04-03 15:59:00",
            amount: "97"
        },
        {
            city_id: "12",
            added_at: "2020-04-03 15:59:00",
            amount: "133"
        },
        {
            city_id: "13",
            added_at: "2020-04-03 15:59:00",
            amount: "201"
        },
        {
            city_id: "1",
            added_at: "2020-04-04 10:00:00",
            amount: "65"
        },
        {
            city_id: "2",
            added_at: "2020-04-04 10:00:00",
            amount: "115"
        },
        {
            city_id: "3",
            added_at: "2020-04-04 09:59:00",
            amount: "135"
        },
        {
            city_id: "4",
            added_at: "2020-04-04 09:59:00",
            amount: "68"
        },
        {
            city_id: "5",
            added_at: "2020-04-04 09:59:00",
            amount: "42"
        },
        {
            city_id: "6",
            added_at: "2020-04-04 09:59:00",
            amount: "121"
        },
        {
            city_id: "7",
            added_at: "2020-04-04 09:59:00",
            amount: "74"
        },
        {
            city_id: "8",
            added_at: "2020-04-04 09:59:00",
            amount: "33"
        },
        {
            city_id: "9",
            added_at: "2020-04-04 09:59:00",
            amount: "149"
        },
        {
            city_id: "10",
            added_at: "2020-04-04 09:59:00",
            amount: "146"
        },
        {
            city_id: "11",
            added_at: "2020-04-04 09:59:00",
            amount: "92"
        },
        {
            city_id: "12",
            added_at: "2020-04-04 09:59:00",
            amount: "140"
        },
        {
            city_id: "13",
            added_at: "2020-04-04 09:59:00",
            amount: "201"
        },
        {
            city_id: "1",
            added_at: "2020-04-04 16:00:00",
            amount: "64"
        },
        {
            city_id: "2",
            added_at: "2020-04-04 16:00:00",
            amount: "115"
        },
        {
            city_id: "3",
            added_at: "2020-04-04 15:59:00",
            amount: "135"
        },
        {
            city_id: "4",
            added_at: "2020-04-04 15:59:00",
            amount: "68"
        },
        {
            city_id: "5",
            added_at: "2020-04-04 15:59:00",
            amount: "42"
        },
        {
            city_id: "6",
            added_at: "2020-04-04 15:59:00",
            amount: "121"
        },
        {
            city_id: "7",
            added_at: "2020-04-04 15:59:00",
            amount: "74"
        },
        {
            city_id: "8",
            added_at: "2020-04-04 15:59:00",
            amount: "33"
        },
        {
            city_id: "9",
            added_at: "2020-04-04 15:59:00",
            amount: "149"
        },
        {
            city_id: "10",
            added_at: "2020-04-04 15:59:00",
            amount: "152"
        },
        {
            city_id: "11",
            added_at: "2020-04-04 15:59:00",
            amount: "92"
        },
        {
            city_id: "12",
            added_at: "2020-04-04 15:59:00",
            amount: "140"
        },
        {
            city_id: "13",
            added_at: "2020-04-04 15:59:00",
            amount: "201"
        },
        {
            city_id: "1",
            added_at: "2020-04-05 10:00:00",
            amount: "66"
        },
        {
            city_id: "2",
            added_at: "2020-04-05 10:00:00",
            amount: "97"
        },
        {
            city_id: "3",
            added_at: "2020-04-05 09:59:00",
            amount: "128"
        },
        {
            city_id: "4",
            added_at: "2020-04-05 09:59:00",
            amount: "12"
        },
        {
            city_id: "5",
            added_at: "2020-04-05 09:59:00",
            amount: "46"
        },
        {
            city_id: "6",
            added_at: "2020-04-05 09:59:00",
            amount: "124"
        },
        {
            city_id: "7",
            added_at: "2020-04-05 09:59:00",
            amount: "72"
        },
        {
            city_id: "8",
            added_at: "2020-04-05 09:59:00",
            amount: "32"
        },
        {
            city_id: "9",
            added_at: "2020-04-05 09:59:00",
            amount: "126"
        },
        {
            city_id: "10",
            added_at: "2020-04-05 09:59:00",
            amount: "157"
        },
        {
            city_id: "11",
            added_at: "2020-04-05 09:59:00",
            amount: "84"
        },
        {
            city_id: "12",
            added_at: "2020-04-05 09:59:00",
            amount: "153"
        },
        {
            city_id: "13",
            added_at: "2020-04-05 09:59:00",
            amount: "205"
        },
        {
            city_id: "1",
            added_at: "2020-04-05 16:00:00",
            amount: "66"
        },
        {
            city_id: "2",
            added_at: "2020-04-05 16:00:00",
            amount: "97"
        },
        {
            city_id: "3",
            added_at: "2020-04-05 15:59:00",
            amount: "128"
        },
        {
            city_id: "4",
            added_at: "2020-04-05 15:59:00",
            amount: "12"
        },
        {
            city_id: "5",
            added_at: "2020-04-05 15:59:00",
            amount: "46"
        },
        {
            city_id: "6",
            added_at: "2020-04-05 15:59:00",
            amount: "124"
        },
        {
            city_id: "7",
            added_at: "2020-04-05 15:59:00",
            amount: "72"
        },
        {
            city_id: "8",
            added_at: "2020-04-05 15:59:00",
            amount: "32"
        },
        {
            city_id: "9",
            added_at: "2020-04-05 15:59:00",
            amount: "126"
        },
        {
            city_id: "10",
            added_at: "2020-04-05 15:59:00",
            amount: "159"
        },
        {
            city_id: "11",
            added_at: "2020-04-05 15:59:00",
            amount: "84"
        },
        {
            city_id: "12",
            added_at: "2020-04-05 15:59:00",
            amount: "153"
        },
        {
            city_id: "13",
            added_at: "2020-04-05 15:59:00",
            amount: "205"
        },
        {
            city_id: "1",
            added_at: "2020-04-06 10:00:00",
            amount: "69"
        },
        {
            city_id: "2",
            added_at: "2020-04-06 10:00:00",
            amount: "97"
        },
        {
            city_id: "3",
            added_at: "2020-04-06 09:59:00",
            amount: "129"
        },
        {
            city_id: "4",
            added_at: "2020-04-06 09:59:00",
            amount: "12"
        },
        {
            city_id: "5",
            added_at: "2020-04-06 09:59:00",
            amount: "35"
        },
        {
            city_id: "6",
            added_at: "2020-04-06 09:59:00",
            amount: "114"
        },
        {
            city_id: "7",
            added_at: "2020-04-06 09:59:00",
            amount: "72"
        },
        {
            city_id: "8",
            added_at: "2020-04-06 09:59:00",
            amount: "32"
        },
        {
            city_id: "9",
            added_at: "2020-04-06 09:59:00",
            amount: "103"
        },
        {
            city_id: "10",
            added_at: "2020-04-06 09:59:00",
            amount: "161"
        },
        {
            city_id: "11",
            added_at: "2020-04-06 09:59:00",
            amount: "75"
        },
        {
            city_id: "12",
            added_at: "2020-04-06 09:59:00",
            amount: "153"
        },
        {
            city_id: "13",
            added_at: "2020-04-06 09:59:00",
            amount: "206"
        },
        {
            city_id: "1",
            added_at: "2020-04-06 16:00:00",
            amount: "68"
        },
        {
            city_id: "2",
            added_at: "2020-04-06 16:00:00",
            amount: "79"
        },
        {
            city_id: "3",
            added_at: "2020-04-06 15:59:00",
            amount: "129"
        },
        {
            city_id: "4",
            added_at: "2020-04-06 15:59:00",
            amount: "13"
        },
        {
            city_id: "5",
            added_at: "2020-04-06 15:59:00",
            amount: "35"
        },
        {
            city_id: "6",
            added_at: "2020-04-06 15:59:00",
            amount: "114"
        },
        {
            city_id: "7",
            added_at: "2020-04-06 15:59:00",
            amount: "70"
        },
        {
            city_id: "8",
            added_at: "2020-04-06 15:59:00",
            amount: "22"
        },
        {
            city_id: "9",
            added_at: "2020-04-06 15:59:00",
            amount: "103"
        },
        {
            city_id: "10",
            added_at: "2020-04-06 15:59:00",
            amount: "172"
        },
        {
            city_id: "11",
            added_at: "2020-04-06 15:59:00",
            amount: "74"
        },
        {
            city_id: "12",
            added_at: "2020-04-06 15:59:00",
            amount: "154"
        },
        {
            city_id: "13",
            added_at: "2020-04-06 15:59:00",
            amount: "206"
        },
        {
            city_id: "1",
            added_at: "2020-04-07 10:00:00",
            amount: "68"
        },
        {
            city_id: "2",
            added_at: "2020-04-07 10:00:00",
            amount: "61"
        },
        {
            city_id: "3",
            added_at: "2020-04-07 09:59:00",
            amount: "109"
        },
        {
            city_id: "4",
            added_at: "2020-04-07 09:59:00",
            amount: "13"
        },
        {
            city_id: "5",
            added_at: "2020-04-07 09:59:00",
            amount: "22"
        },
        {
            city_id: "6",
            added_at: "2020-04-07 09:59:00",
            amount: "107"
        },
        {
            city_id: "7",
            added_at: "2020-04-07 09:59:00",
            amount: "71"
        },
        {
            city_id: "8",
            added_at: "2020-04-07 09:59:00",
            amount: "22"
        },
        {
            city_id: "9",
            added_at: "2020-04-07 09:59:00",
            amount: "99"
        },
        {
            city_id: "10",
            added_at: "2020-04-07 09:59:00",
            amount: "175"
        },
        {
            city_id: "11",
            added_at: "2020-04-07 09:59:00",
            amount: "62"
        },
        {
            city_id: "12",
            added_at: "2020-04-07 09:59:00",
            amount: "154"
        },
        {
            city_id: "13",
            added_at: "2020-04-07 09:59:00",
            amount: "210"
        },
        {
            city_id: "1",
            added_at: "2020-04-07 16:00:00",
            amount: "64"
        },
        {
            city_id: "2",
            added_at: "2020-04-07 16:00:00",
            amount: "61"
        },
        {
            city_id: "3",
            added_at: "2020-04-07 15:59:00",
            amount: "109"
        },
        {
            city_id: "4",
            added_at: "2020-04-07 15:59:00",
            amount: "18"
        },
        {
            city_id: "5",
            added_at: "2020-04-07 15:59:00",
            amount: "22"
        },
        {
            city_id: "6",
            added_at: "2020-04-07 15:59:00",
            amount: "107"
        },
        {
            city_id: "7",
            added_at: "2020-04-07 15:59:00",
            amount: "65"
        },
        {
            city_id: "8",
            added_at: "2020-04-07 15:59:00",
            amount: "22"
        },
        {
            city_id: "9",
            added_at: "2020-04-07 15:59:00",
            amount: "99"
        },
        {
            city_id: "10",
            added_at: "2020-04-07 15:59:00",
            amount: "175"
        },
        {
            city_id: "11",
            added_at: "2020-04-07 15:59:00",
            amount: "62"
        },
        {
            city_id: "12",
            added_at: "2020-04-07 15:59:00",
            amount: "154"
        },
        {
            city_id: "13",
            added_at: "2020-04-07 15:59:00",
            amount: "209"
        },
        {
            city_id: "1",
            added_at: "2020-04-08 10:00:00",
            amount: "64"
        },
        {
            city_id: "2",
            added_at: "2020-04-08 10:00:00",
            amount: "51"
        },
        {
            city_id: "3",
            added_at: "2020-04-08 09:59:00",
            amount: "109"
        },
        {
            city_id: "4",
            added_at: "2020-04-08 09:59:00",
            amount: "18"
        },
        {
            city_id: "5",
            added_at: "2020-04-08 09:59:00",
            amount: "14"
        },
        {
            city_id: "6",
            added_at: "2020-04-08 09:59:00",
            amount: "102"
        },
        {
            city_id: "7",
            added_at: "2020-04-08 09:59:00",
            amount: "65"
        },
        {
            city_id: "8",
            added_at: "2020-04-08 09:59:00",
            amount: "19"
        },
        {
            city_id: "9",
            added_at: "2020-04-08 09:59:00",
            amount: "99"
        },
        {
            city_id: "10",
            added_at: "2020-04-08 09:59:00",
            amount: "202"
        },
        {
            city_id: "11",
            added_at: "2020-04-08 09:59:00",
            amount: "47"
        },
        {
            city_id: "12",
            added_at: "2020-04-08 09:59:00",
            amount: "170"
        },
        {
            city_id: "13",
            added_at: "2020-04-08 09:59:00",
            amount: "216"
        },
        {
            city_id: "1",
            added_at: "2020-04-08 16:00:00",
            amount: "64"
        },
        {
            city_id: "2",
            added_at: "2020-04-08 16:00:00",
            amount: "51"
        },
        {
            city_id: "3",
            added_at: "2020-04-08 15:59:00",
            amount: "102"
        },
        {
            city_id: "4",
            added_at: "2020-04-08 15:59:00",
            amount: "18"
        },
        {
            city_id: "5",
            added_at: "2020-04-08 15:59:00",
            amount: "14"
        },
        {
            city_id: "6",
            added_at: "2020-04-08 15:59:00",
            amount: "102"
        },
        {
            city_id: "7",
            added_at: "2020-04-08 15:59:00",
            amount: "65"
        },
        {
            city_id: "8",
            added_at: "2020-04-08 15:59:00",
            amount: "19"
        },
        {
            city_id: "9",
            added_at: "2020-04-08 15:59:00",
            amount: "63"
        },
        {
            city_id: "10",
            added_at: "2020-04-08 15:59:00",
            amount: "202"
        },
        {
            city_id: "11",
            added_at: "2020-04-08 15:59:00",
            amount: "47"
        },
        {
            city_id: "12",
            added_at: "2020-04-08 15:59:00",
            amount: "170"
        },
        {
            city_id: "13",
            added_at: "2020-04-08 15:59:00",
            amount: "216"
        },
        {
            city_id: "1",
            added_at: "2020-04-09 10:00:00",
            amount: "57"
        },
        {
            city_id: "2",
            added_at: "2020-04-09 10:00:00",
            amount: "29"
        },
        {
            city_id: "3",
            added_at: "2020-04-09 09:59:00",
            amount: "102"
        },
        {
            city_id: "4",
            added_at: "2020-04-09 09:59:00",
            amount: "18"
        },
        {
            city_id: "5",
            added_at: "2020-04-09 09:59:00",
            amount: "12"
        },
        {
            city_id: "6",
            added_at: "2020-04-09 09:59:00",
            amount: "99"
        },
        {
            city_id: "7",
            added_at: "2020-04-09 09:59:00",
            amount: "44"
        },
        {
            city_id: "8",
            added_at: "2020-04-09 09:59:00",
            amount: "24"
        },
        {
            city_id: "9",
            added_at: "2020-04-09 09:59:00",
            amount: "90"
        },
        {
            city_id: "10",
            added_at: "2020-04-09 09:59:00",
            amount: "267"
        },
        {
            city_id: "11",
            added_at: "2020-04-09 09:59:00",
            amount: "38"
        },
        {
            city_id: "12",
            added_at: "2020-04-09 09:59:00",
            amount: "206"
        },
        {
            city_id: "13",
            added_at: "2020-04-09 09:59:00",
            amount: "221"
        },
        {
            city_id: "1",
            added_at: "2020-04-09 16:00:00",
            amount: "54"
        },
        {
            city_id: "2",
            added_at: "2020-04-09 16:00:00",
            amount: "29"
        },
        {
            city_id: "3",
            added_at: "2020-04-09 15:59:00",
            amount: "101"
        },
        {
            city_id: "4",
            added_at: "2020-04-09 15:59:00",
            amount: "18"
        },
        {
            city_id: "5",
            added_at: "2020-04-09 15:59:00",
            amount: "16"
        },
        {
            city_id: "6",
            added_at: "2020-04-09 15:59:00",
            amount: "99"
        },
        {
            city_id: "7",
            added_at: "2020-04-09 15:59:00",
            amount: "47"
        },
        {
            city_id: "8",
            added_at: "2020-04-09 15:59:00",
            amount: "24"
        },
        {
            city_id: "9",
            added_at: "2020-04-09 15:59:00",
            amount: "90"
        },
        {
            city_id: "10",
            added_at: "2020-04-09 15:59:00",
            amount: "213"
        },
        {
            city_id: "11",
            added_at: "2020-04-09 15:59:00",
            amount: "38"
        },
        {
            city_id: "12",
            added_at: "2020-04-09 15:59:00",
            amount: "221"
        },
        {
            city_id: "13",
            added_at: "2020-04-09 15:59:00",
            amount: "226"
        },
        {
            city_id: "1",
            added_at: "2020-04-10 10:00:00",
            amount: "54"
        },
        {
            city_id: "2",
            added_at: "2020-04-10 10:00:00",
            amount: "28"
        },
        {
            city_id: "3",
            added_at: "2020-04-10 09:59:00",
            amount: "99"
        },
        {
            city_id: "4",
            added_at: "2020-04-10 09:59:00",
            amount: "18"
        },
        {
            city_id: "5",
            added_at: "2020-04-10 09:59:00",
            amount: "14"
        },
        {
            city_id: "6",
            added_at: "2020-04-10 09:59:00",
            amount: "88"
        },
        {
            city_id: "7",
            added_at: "2020-04-10 09:59:00",
            amount: "47"
        },
        {
            city_id: "8",
            added_at: "2020-04-10 09:59:00",
            amount: "15"
        },
        {
            city_id: "9",
            added_at: "2020-04-10 09:59:00",
            amount: "96"
        },
        {
            city_id: "10",
            added_at: "2020-04-10 09:59:00",
            amount: "220"
        },
        {
            city_id: "11",
            added_at: "2020-04-10 09:59:00",
            amount: "39"
        },
        {
            city_id: "12",
            added_at: "2020-04-10 09:59:00",
            amount: "221"
        },
        {
            city_id: "13",
            added_at: "2020-04-10 09:59:00",
            amount: "226"
        },
        {
            city_id: "1",
            added_at: "2020-04-10 16:00:00",
            amount: "54"
        },
        {
            city_id: "2",
            added_at: "2020-04-10 16:00:00",
            amount: "28"
        },
        {
            city_id: "3",
            added_at: "2020-04-10 15:59:00",
            amount: "99"
        },
        {
            city_id: "4",
            added_at: "2020-04-10 15:59:00",
            amount: "25"
        },
        {
            city_id: "5",
            added_at: "2020-04-10 15:59:00",
            amount: "14"
        },
        {
            city_id: "6",
            added_at: "2020-04-10 15:59:00",
            amount: "88"
        },
        {
            city_id: "7",
            added_at: "2020-04-10 15:59:00",
            amount: "47"
        },
        {
            city_id: "8",
            added_at: "2020-04-10 15:59:00",
            amount: "17"
        },
        {
            city_id: "9",
            added_at: "2020-04-10 15:59:00",
            amount: "96"
        },
        {
            city_id: "10",
            added_at: "2020-04-10 15:59:00",
            amount: "230"
        },
        {
            city_id: "11",
            added_at: "2020-04-10 15:59:00",
            amount: "38"
        },
        {
            city_id: "12",
            added_at: "2020-04-10 15:59:00",
            amount: "221"
        },
        {
            city_id: "13",
            added_at: "2020-04-10 15:59:00",
            amount: "222"
        },
        {
            city_id: "1",
            added_at: "2020-04-11 10:00:00",
            amount: "50"
        },
        {
            city_id: "2",
            added_at: "2020-04-11 10:00:00",
            amount: "31"
        },
        {
            city_id: "3",
            added_at: "2020-04-11 09:59:00",
            amount: "102"
        },
        {
            city_id: "4",
            added_at: "2020-04-11 09:59:00",
            amount: "25"
        },
        {
            city_id: "5",
            added_at: "2020-04-11 09:59:00",
            amount: "14"
        },
        {
            city_id: "6",
            added_at: "2020-04-11 09:59:00",
            amount: "83"
        },
        {
            city_id: "7",
            added_at: "2020-04-11 09:59:00",
            amount: "46"
        },
        {
            city_id: "8",
            added_at: "2020-04-11 09:59:00",
            amount: "26"
        },
        {
            city_id: "9",
            added_at: "2020-04-11 09:59:00",
            amount: "90"
        },
        {
            city_id: "10",
            added_at: "2020-04-11 09:59:00",
            amount: "230"
        },
        {
            city_id: "11",
            added_at: "2020-04-11 09:59:00",
            amount: "33"
        },
        {
            city_id: "12",
            added_at: "2020-04-11 09:59:00",
            amount: "232"
        },
        {
            city_id: "13",
            added_at: "2020-04-11 09:59:00",
            amount: "222"
        },
        {
            city_id: "1",
            added_at: "2020-04-11 16:00:00",
            amount: "50"
        },
        {
            city_id: "2",
            added_at: "2020-04-11 16:00:00",
            amount: "31"
        },
        {
            city_id: "3",
            added_at: "2020-04-11 15:59:00",
            amount: "102"
        },
        {
            city_id: "4",
            added_at: "2020-04-11 15:59:00",
            amount: "25"
        },
        {
            city_id: "5",
            added_at: "2020-04-11 15:59:00",
            amount: "14"
        },
        {
            city_id: "6",
            added_at: "2020-04-11 15:59:00",
            amount: "83"
        },
        {
            city_id: "7",
            added_at: "2020-04-11 15:59:00",
            amount: "46"
        },
        {
            city_id: "8",
            added_at: "2020-04-11 15:59:00",
            amount: "26"
        },
        {
            city_id: "9",
            added_at: "2020-04-11 15:59:00",
            amount: "90"
        },
        {
            city_id: "10",
            added_at: "2020-04-11 15:59:00",
            amount: "240"
        },
        {
            city_id: "11",
            added_at: "2020-04-11 15:59:00",
            amount: "33"
        },
        {
            city_id: "12",
            added_at: "2020-04-11 15:59:00",
            amount: "232"
        },
        {
            city_id: "13",
            added_at: "2020-04-11 15:59:00",
            amount: "222"
        },
        {
            city_id: "1",
            added_at: "2020-04-12 10:00:00",
            amount: "46"
        },
        {
            city_id: "2",
            added_at: "2020-04-12 10:00:00",
            amount: "13"
        },
        {
            city_id: "3",
            added_at: "2020-04-12 09:59:00",
            amount: "101"
        },
        {
            city_id: "4",
            added_at: "2020-04-12 09:59:00",
            amount: "25"
        },
        {
            city_id: "5",
            added_at: "2020-04-12 09:59:00",
            amount: "14"
        },
        {
            city_id: "6",
            added_at: "2020-04-12 09:59:00",
            amount: "93"
        },
        {
            city_id: "7",
            added_at: "2020-04-12 09:59:00",
            amount: "42"
        },
        {
            city_id: "8",
            added_at: "2020-04-12 09:59:00",
            amount: "26"
        },
        {
            city_id: "9",
            added_at: "2020-04-12 09:59:00",
            amount: "94"
        },
        {
            city_id: "10",
            added_at: "2020-04-12 09:59:00",
            amount: "242"
        },
        {
            city_id: "11",
            added_at: "2020-04-12 09:59:00",
            amount: "31"
        },
        {
            city_id: "12",
            added_at: "2020-04-12 09:59:00",
            amount: "232"
        },
        {
            city_id: "13",
            added_at: "2020-04-12 09:59:00",
            amount: "225"
        },
        {
            city_id: "1",
            added_at: "2020-04-12 16:00:00",
            amount: "48"
        },
        {
            city_id: "2",
            added_at: "2020-04-12 16:00:00",
            amount: "13"
        },
        {
            city_id: "3",
            added_at: "2020-04-12 15:59:00",
            amount: "101"
        },
        {
            city_id: "4",
            added_at: "2020-04-12 15:59:00",
            amount: "31"
        },
        {
            city_id: "5",
            added_at: "2020-04-12 15:59:00",
            amount: "10"
        },
        {
            city_id: "6",
            added_at: "2020-04-12 15:59:00",
            amount: "93"
        },
        {
            city_id: "7",
            added_at: "2020-04-12 15:59:00",
            amount: "42"
        },
        {
            city_id: "8",
            added_at: "2020-04-12 15:59:00",
            amount: "26"
        },
        {
            city_id: "9",
            added_at: "2020-04-12 15:59:00",
            amount: "94"
        },
        {
            city_id: "10",
            added_at: "2020-04-12 15:59:00",
            amount: "247"
        },
        {
            city_id: "11",
            added_at: "2020-04-12 15:59:00",
            amount: "31"
        },
        {
            city_id: "12",
            added_at: "2020-04-12 15:59:00",
            amount: "256"
        },
        {
            city_id: "13",
            added_at: "2020-04-12 15:59:00",
            amount: "225"
        },
        {
            city_id: "1",
            added_at: "2020-04-13 10:00:00",
            amount: "46"
        },
        {
            city_id: "2",
            added_at: "2020-04-13 10:00:00",
            amount: "13"
        },
        {
            city_id: "3",
            added_at: "2020-04-13 09:59:00",
            amount: "89"
        },
        {
            city_id: "4",
            added_at: "2020-04-13 09:59:00",
            amount: "31"
        },
        {
            city_id: "5",
            added_at: "2020-04-13 09:59:00",
            amount: "5"
        },
        {
            city_id: "6",
            added_at: "2020-04-13 09:59:00",
            amount: "86"
        },
        {
            city_id: "7",
            added_at: "2020-04-13 09:59:00",
            amount: "44"
        },
        {
            city_id: "8",
            added_at: "2020-04-13 09:59:00",
            amount: "24"
        },
        {
            city_id: "9",
            added_at: "2020-04-13 09:59:00",
            amount: "96"
        },
        {
            city_id: "10",
            added_at: "2020-04-13 09:59:00",
            amount: "246"
        },
        {
            city_id: "11",
            added_at: "2020-04-13 09:59:00",
            amount: "29"
        },
        {
            city_id: "12",
            added_at: "2020-04-13 09:59:00",
            amount: "256"
        },
        {
            city_id: "13",
            added_at: "2020-04-13 09:59:00",
            amount: "225"
        },
        {
            city_id: "1",
            added_at: "2020-04-13 16:00:00",
            amount: "46"
        },
        {
            city_id: "2",
            added_at: "2020-04-13 16:00:00",
            amount: "13"
        },
        {
            city_id: "3",
            added_at: "2020-04-13 15:59:00",
            amount: "89"
        },
        {
            city_id: "4",
            added_at: "2020-04-13 15:59:00",
            amount: "34"
        },
        {
            city_id: "5",
            added_at: "2020-04-13 15:59:00",
            amount: "5"
        },
        {
            city_id: "6",
            added_at: "2020-04-13 15:59:00",
            amount: "86"
        },
        {
            city_id: "7",
            added_at: "2020-04-13 15:59:00",
            amount: "44"
        },
        {
            city_id: "8",
            added_at: "2020-04-13 15:59:00",
            amount: "19"
        },
        {
            city_id: "9",
            added_at: "2020-04-13 15:59:00",
            amount: "96"
        },
        {
            city_id: "10",
            added_at: "2020-04-13 15:59:00",
            amount: "246"
        },
        {
            city_id: "11",
            added_at: "2020-04-13 15:59:00",
            amount: "29"
        },
        {
            city_id: "12",
            added_at: "2020-04-13 15:59:00",
            amount: "300"
        },
        {
            city_id: "13",
            added_at: "2020-04-13 15:59:00",
            amount: "225"
        },
        {
            city_id: "1",
            added_at: "2020-04-14 10:00:00",
            amount: "46"
        },
        {
            city_id: "2",
            added_at: "2020-04-14 10:00:00",
            amount: "14"
        },
        {
            city_id: "3",
            added_at: "2020-04-14 09:59:00",
            amount: "76"
        },
        {
            city_id: "4",
            added_at: "2020-04-14 09:59:00",
            amount: "34"
        },
        {
            city_id: "5",
            added_at: "2020-04-14 09:59:00",
            amount: "33"
        },
        {
            city_id: "6",
            added_at: "2020-04-14 09:59:00",
            amount: "84"
        },
        {
            city_id: "7",
            added_at: "2020-04-14 09:59:00",
            amount: "44"
        },
        {
            city_id: "8",
            added_at: "2020-04-14 09:59:00",
            amount: "17"
        },
        {
            city_id: "9",
            added_at: "2020-04-14 09:59:00",
            amount: "83"
        },
        {
            city_id: "10",
            added_at: "2020-04-14 09:59:00",
            amount: "257"
        },
        {
            city_id: "11",
            added_at: "2020-04-14 09:59:00",
            amount: "26"
        },
        {
            city_id: "12",
            added_at: "2020-04-14 09:59:00",
            amount: "300"
        },
        {
            city_id: "13",
            added_at: "2020-04-14 09:59:00",
            amount: "225"
        },
        {
            city_id: "1",
            added_at: "2020-04-14 16:00:00",
            amount: "41"
        },
        {
            city_id: "2",
            added_at: "2020-04-14 16:00:00",
            amount: "14"
        },
        {
            city_id: "3",
            added_at: "2020-04-14 15:59:00",
            amount: "76"
        },
        {
            city_id: "4",
            added_at: "2020-04-14 15:59:00",
            amount: "34"
        },
        {
            city_id: "5",
            added_at: "2020-04-14 15:59:00",
            amount: "33"
        },
        {
            city_id: "6",
            added_at: "2020-04-14 15:59:00",
            amount: "82"
        },
        {
            city_id: "7",
            added_at: "2020-04-14 15:59:00",
            amount: "31"
        },
        {
            city_id: "8",
            added_at: "2020-04-14 15:59:00",
            amount: "25"
        },
        {
            city_id: "9",
            added_at: "2020-04-14 15:59:00",
            amount: "83"
        },
        {
            city_id: "10",
            added_at: "2020-04-14 15:59:00",
            amount: "257"
        },
        {
            city_id: "11",
            added_at: "2020-04-14 15:59:00",
            amount: "26"
        },
        {
            city_id: "12",
            added_at: "2020-04-14 15:59:00",
            amount: "300"
        },
        {
            city_id: "13",
            added_at: "2020-04-14 15:59:00",
            amount: "225"
        }
    ]

# add_odp = CovOdp.create(odps)


odps.each do | odp |

  cov_odp = CovOdp.new
  cov_odp.city_id = odp[:city_id]
  cov_odp.amount = odp[:amount]
  cov_odp.added_at = odp[:added_at]
  cov_odp.save


  city = City.find(cov_odp.city.id)

  if (city.cov_odp_count == 0)
    diff_amount = city.cov_odp_count + cov_odp.amount
  else
    diff_amount = cov_odp.amount - city.cov_odp_count
  end

  cov_odp.amount = diff_amount
  cov_odp.save

  city.cov_odp_count += cov_odp.amount
  city.save

end
