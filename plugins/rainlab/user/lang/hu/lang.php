<?php

return [
    'plugin' => [
        'name' => 'Felhasználók',
        'description' => 'Felhasználók kezelése a honlapon.',
        'tab' => 'Felhasználók',
        'access_users' => 'Tagok kezelése',
        'access_groups' => 'Csoportok kezelése'
    ],
    'users' => [
        'menu_label' => 'Felhasználók',
        'all_users' => 'Felhasználók',
        'new_user' => 'Új felhasználó',
        'list_title' => 'Felhasználók kezelése',
        'activating' => 'Aktiválás...',
        'activate_warning_title' => 'Nincs aktiválva a felhasználó!',
        'activate_warning_desc' => 'Ennek a felhasználónak nem történt meg az aktiválása  és nem tud bejelentkezni.',
        'activate_confirm' => 'Valóban aktiválni akarja ezt a felhasználót?',
        'active_manually' => 'A felhasználó kézi aktiválása',
        'delete_confirm' => 'Valóban törölni akarja ezt a felhasználót?',
        'activated_success' => 'A felhasználó aktiválása sikerült!',
        'return_to_list' => 'Vissza a felhasználó listához',
        'delete_selected_empty' => 'Nincs kiválasztva felhasználó a törléshez.',
        'delete_selected_confirm' => 'Valóban törölni akarja a kiválasztott felhasználókat?',
        'delete_selected_success' => 'A kiválasztott felhasználók sikeresen törölve lettek.'
    ],
    'settings' => [
        'users' => 'Felhasználók',
        'menu_label' => 'Felhasználói beállítások',
        'menu_description' => 'A felhasználó alapú beállítások kezelése.',
        'activation_tab' => 'Aktiválás',
        'signin_tab' => 'Bejelentkezés',
        'registration_tab' => 'Regisztráció',
        'notifications_tab' => 'Értesítések',
        'allow_registration' => 'Regisztráció engedélyezése',
        'allow_registration_comment' => 'Tiltás esetén csak az adminisztrátorok adhatnak hozzá felhasználót.',
        'activate_mode' => 'Aktiválási mód',
        'activate_mode_comment' => 'Válassza ki, hogyan kell aktiválni egy felhasználói fiókot.',
        'activate_mode_auto' => 'Automatikus',
        'activate_mode_auto_comment' => 'Regisztráláskor automatikusan aktiválva.',
        'activate_mode_user' => 'Felhasználó',
        'activate_mode_user_comment' => 'A felhasználó levéllel aktiválja a saját fiókját.',
        'activate_mode_admin' => 'Adminisztrátor',
        'activate_mode_admin_comment' => 'Csak adminisztrátor aktiválhat felhasználót.',
        'welcome_template' => 'Üdvözlő sablon',
        'welcome_template_comment' => 'A felhasználónak első aktiváláskor küldendő levél sablonja.',
        'require_activation' => 'A bejelentkezéshez aktiválás szükséges',
        'require_activation_comment' => 'A felhasználóknak aktivált fiókkal kell rendelkezniük a bejelentkezéshez.',
        'use_throttle' => 'Kísérletek késleltetése',
        'use_throttle_comment' => 'Az ismétlődő sikertelen bejelentkezések ideiglenesen felfüggesztik a felhasználót.',
        'login_attribute' => 'Bejelentkezési attribútum',
        'login_attribute_comment' => 'Válassza ki, hogy milyen felhasználói adatot kell használni a bejelentkezéshez.',
        'no_mail_template' => 'Nincs értesítés küldése',
        'hint_templates' => 'A sablonokat a Beállítások menüben a Levelezés > Levél sablonok választásával szabhatja személyre.'
    ],
    'user' => [
        'label' => 'Felhasználó',
        'id' => 'Azonosító',
        'username' => 'Felhasználónév',
        'name' => 'Név',
        'surname' => 'Családnév',
        'email' => 'E-mail cím',
        'created_at' => 'Regisztrált',
        'reset_password' => 'Új jelszó megadása',
        'reset_password_comment' => 'Kérjük használjon egyedi és erős jelszót.',
        'confirm_password' => 'Jelszó megerősítése',
        'confirm_password_comment' => 'Kérjük gépelje be újra a jelszót.',
        'groups' => 'Csoportok',
        'empty_groups' => 'Egy sincs létrehozva.',
        'avatar' => 'Profilkép',
        'details' => 'Adatok',
        'account' => 'Fiók'
    ],
    'group' => [
        'label' => 'Csoport',
        'id' => 'ID',
        'name' => 'Név',
        'description_field' => 'Leírás',
        'code' => 'Kód',
        'code_comment' => 'Egyedi azonosító az API eléréshez.',
        'created_at' => 'Létrehozva',
        'users_count' => 'Felhasználók'
    ],
    'groups' => [
        'menu_label' => 'Csoportok',
        'all_groups' => 'Csoportok',
        'new_group' => 'Új csoport',
        'delete_selected_confirm' => 'Valóban törölni akarja a kijelölt csoportokat?',
        'list_title' => 'Csoportok kezelése',
        'delete_confirm' => 'Valóban törölni akarja ezt a csoportot?',
        'delete_selected_success' => 'A csoportok sikeresen eltávolításra kerültek.',
        'delete_selected_empty' => 'A törléshez előbb ki kell választani csoportot.',
        'return_to_list' => 'Vissza a csoportokhoz',
        'return_to_users' => 'Vissza a felhasználókhoz',
        'create_title' => 'Csoport létrehozása',
        'update_title' => 'Csoport szerkesztése',
        'preview_title' => 'Csoport előnézete'
    ],
    'login' => [
        'attribute_email' => 'E-mail cím',
        'attribute_username' => 'Felhasználónév'
    ],
    'account' => [
        'account' => 'Fiók',
        'account_desc' => 'Felhasználó kezelési űrlap.',
        'redirect_to' => 'Átirányítás',
        'redirect_to_desc' => 'A lapnév az átirányításhoz frissítés, bejelentkezés vagy regisztrálás után.',
        'code_param' => 'Aktiválási kód',
        'code_param_desc' => 'A regisztrálás aktiválási kódjához használt oldal webcíme',
        'invalid_activation_code' => 'A megadott aktiválási kód érvénytelen',
        'invalid_user' => 'Nem található a megadott hitelesítési adatokkal rendelkező felhasználó.',
        'success_activation' => 'A fiók aktiválása sikerült.',
        'success_saved' => 'Sikerült menteni a beállításokat!',
        'login_first' => 'Előbb be kell jelentkeznie!',
        'already_active' => 'Már aktiválta a fiókját!',
        'activation_email_sent' => 'Az aktiválási e-mail elküldése a megadott e-mail címre megtörtént.',
        'sign_in' => 'Bejelentkezés',
        'register' => 'Regisztráció',
        'full_name' => 'Teljes név',
        'email' => 'E-mail cím',
        'password' => 'Jelszó',
        'register' => 'Regisztráció',
        'login' => 'Bejelentkezés',
        'new_password' => 'Új jelszó',
        'new_password_confirm' => 'Új jelszó megerősítése'
    ],
    'reset_password' => [
        'reset_password' => 'Új jelszó megadása',
        'reset_password_desc' => 'Elfelejtett jelszó űrlap.',
        'code_param' => 'Visszaállító kód',
        'code_param_desc' => 'A visszaállító kódhoz használt oldal webcíme'
    ],
    'session' => [
        'session' => 'Munkamenet',
        'session_desc' => 'Hozzáadja egy laphoz a felhasználói munkamenetet és korlátozhatja a laphoz való hozzáférést.',
        'security_title' => 'Csak engedélyezés',
        'security_desc' => 'Ki számára engedélyezett a hozzáférés ehhez laphoz.',
        'all' => 'Mindenki',
        'users' => 'Felhasználók',
        'guests' => 'Vendégek',
        'redirect_title' => 'Átirányítás',
        'redirect_desc' => 'Az átirányítandó oldal neve, ha a hozzáférés megtagadva.',
        'logout' => 'Sikeresen kijelentkezett!'
    ]
];