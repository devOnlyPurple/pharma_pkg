import 'package:flutter_localization/flutter_localization.dart';

import '../../helpers/constants/widget_constants.dart';

const List<MapLocale> LOCALES = [
  MapLocale("fr", LocaleData.FR),
  MapLocale("en", LocaleData.EN),
];

mixin LocaleData {
  static const String pays = 'pays';
  static const String phone = 'phone';
  static const String geolocation = 'Geolocation';
  static const String at = 'at';
  static const String withK = 'withK';
  static const String sharePharmacieFirstText = 'sharePharmacieFirstText';
  static const String finalizeProcess = 'finalizeProcess';
  static const String oneStep = 'oneStep';
  static const String skipStep = 'skipStep';
  static const String notActuCountry = 'notActuCountry';
  static const String successCountryMsg = 'successCountryMsg';
  static const String passMsg = 'passMsg';

  static const String notActuCountryR = 'notActuCountryR';
  static const String chooseActuCountry = 'chooseActuCountry';
  static const String chooseActuCountryR = 'chooseActuCountryR';
  static const String voirPlus = 'voirPlus';
  static const String lastRecomm = 'lastRecomm';
  static const String rapidAccess = 'rapidAccess';
  static const String pressTomove = 'pressTomove';
  static const String allService = 'allService';
  static const String customService = 'customService';
  static const String saveChoice = 'saveChoice';
  static const String updateUser = 'updateUser';
  static const String required = 'required';
  static const String saveLocation = 'saveLocation';
  static const String loadingSaveAdresse = 'loadingSaveAdresse';
  static const String loadingUpdateAdresse = 'loadingUpdateAdresse';
  static const String loadingAdresse = 'loadingAdresse';
  static const String residenceAdresse = 'residenceAdresse';
  static const String changingProgress = 'changingProgress';
  static const String politique = 'politique';
  static const String condition = 'condition';
  static const String conditions = 'conditions';
  static const String loadingLogout = 'loadingLogout';
  static const String pharmacy = 'pharmacy';
  static const String pharmacyGarde = 'pharmacyGarde';
  static const String pharmacyProche = 'pharmacyProche';
  static const String pharmacyPeriode = 'pharmacyPeriode';
  static const String pharmacyEmpty = 'pharmacyEmpty';
  static const String pharmacyForm = 'pharmacyForm';
  static const String pharmacyCheck = 'pharmacyCheck';
  static const String pharmacyLoading = 'pharmacyLoading';
  static const String shareLoading = 'shareLoading';
  static const String conseilLoading = 'conseilLoading';
  static const String conseilForm = 'conseilForm';
  static const String conseil = 'conseil';
  static const String noConseil = 'noConseil';
  static const String conseilSave = 'conseilSave';
  static const String actuLoading = 'actuLoading';
  static const String actuForm = 'actuForm';
  static const String actualite = 'actualite';
  static const String actuEmpty = 'actuEmpty';
  static const String agenda = 'agenda';
  static const String tousLestypes = 'tousLestypes';
  static const String agendaEmpty = 'agendaEmpty';
  static const String agendaLoading = 'agendaLoading';
  static const String newApppoint = 'newApppoint';
  static const String rdvCome = 'rdvCome';
  static const String rdvPast = 'rdvPast';
  static const String delete = 'delete';
  static const String past = 'past';
  static const String rdvCancel = 'rdvCancel';
  static const String rdvReject = 'rdvReject';
  static const String rdvAccept = 'rdvAccept';
  static const String rdvPaid = 'rdvPaid';
  static const String rdvConfirm = 'rdvConfirm';
  static const String rdvConfirmAttente = 'rdvConfirmAttente';
  static const String startConsult = 'startConsult';
  static const String confirmAppoint = 'confirmAppoint';
  static const String loadingAppoint = 'loadingAppoint';
  static const String sheetAppoint = 'sheetAppoint';
  static const String canceling = 'canceling';
  static const String cancel = 'cancel';
  static const String cancelText = 'cancelText';
  static const String cancelLoading = 'cancelLoading';
  static const String deleting = 'deleting';
  static const String deleteText = 'deleteText';
  static const String deleteLoading = 'deleteLoading';
  static const String docLoading = 'docLoading';
  static const String docList = 'docList';
  static const String docSearch = 'docSearch';
  static const String docFilter = 'docFilter';
  static const String docSpeciality = 'docSpeciality';
  static const String docConsultation = 'docConsultation';
  static const String docDetail = 'docDetail';
  static const String apply = 'apply';
  static const String docLangue = 'docLangue';
  static const String docTypeConsult = 'docTypeConsult';
  static const String docExperience = 'docExperience';
  static const String docFormation = 'docFormation';
  static const String docTravaux = 'docTravaux';
  static const String docLangueTalk = 'docLangueTalk';
  static const String docAssoc = 'docAssoc';
  static const String docInfo = 'docInfo';
  static const String docExpertise = 'docExpertise';
  static const String docEmpty = 'docEmpty';
  static const String order = 'order';
  static const String close = 'close';
  static const String addApointLoading = 'addApointLoading';
  static const String submit = 'submit';
  static const String motifRdv = 'motifRdv';
  static const String rdv = 'rdv';
  static const String creneauLoading = 'creneauLoading';
  static const String notHourl = 'notHourl';
  static const String selectCons = 'selectCons';
  static const String typeCons = 'typeCons';
  static const String prixCons = 'prixCons';
  static const String startHour = 'startHour';
  static const String onPay = 'onPay';
  static const String rembors = 'rembors';
  static const String textInternet = 'textInternet';
  static const String textLocalistation = 'textLocalistation';
  static const String langueMessage = 'langueMessage';
  static const String textError = 'textError';
  static const String ressayer = 'ressayer';
  static const String adresseEmpty = 'adresseEmpty';
  static const String adresseDelete = 'adresseDelete';
  static const String adresseDeleting = 'adresseDeleting';
  static const String searchPharmacy = 'searchPharmacy';
  static const String newIn = 'newIn';
  static const String error = 'error';
  static const String success = 'success';
  static const String motdepasse = 'motdepasse';
  static const String connectCurrent = 'connectCurrent';
  static const String verifCurrent = 'verifCurrent';
  static const String chooseCountry = 'chooseCountry';
  static const String verify = 'verify';
  static const String renseignText = 'renseignText';
  static const String verifLoading = 'verifLoading';
  static const String differentPassword = 'differentPassword';
  static const String readCondition = 'readCondition';
  static const String registerLoading = 'registerLoading';
  static const String iRegister = 'iRegister';
  static const String conditionAccept = 'conditionAccept';
  static const String pinConfim = 'pinConfim';
  // meet
  static const String liaison = 'liaison';
  static const String onlineConsult = 'onlineConsult';
  static const String cryptProgress = 'cryptProgress';
  static const String securityMeet = 'securityMeet';
  static const String startMeetProgress = 'startMeetProgress';
  static const String startMeetNow = 'startMeetNow';

//
  static const String title = 'title';
  // static const String body = 'body';
  static const String langueFr = 'langueFr';
  static const String langueEn = 'langueEn';
  static const String onboardbtn1 = 'onboardbtn1';
  static const String onboardbtn2 = 'onboardbtn2';
  static const String onboardbtn3 = 'onboardbtn3';
  static const String continuer = 'continuer';
  static const String toFinish = 'toFinish';
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String compte = 'compte';
  static const String create = 'create';
  // static const String back = 'back';
  static const String forget = 'forget';
  static const String noAccount = 'noAccount';
  static const String signUp = 'signUp';
  static const String username = 'username';
  static const String password = 'password';
  static const String connexion = 'connexion';
  static const String dialogTitle = 'dialogTitle';
  static const String dialogBody = 'dialogBody';
  static const String dialogBtnText = 'dialogBtnText';
  static const String inscription = 'inscription';
  static const String bodyRegister = 'bodyRegister';
  static const String surname = 'surname';
  static const String firstname = 'firstname';
  static const String number = 'number';
  static const String help = 'help';
  static const String yesAccount = 'yesAccount';
  static const String sexeH = 'sexeH';
  static const String sexeF = 'sexeF';
  static const String code = 'code';
  static const String advanceText = 'advanceText';
  static const String otpBtn = 'otpBtn';
  static const String resend = 'resend';
  static const String firsText = 'firsText';
  static const String serviceText = 'serviceText';

  static const String wait = 'wait';
  static const String disconnectText = 'disconnectText';
  static const String resendLoading = 'resendLoading';
  static const String changingPassword = 'changingPassword';
  static const String title1 = 'title1';
  static const String title2 = 'title2';
  static const String title3 = 'title3';
  static const String title4 = 'title4';
  static const String notification = 'notification';
  static const String notifEmpty = 'notifEmpty';
  static const String selectGrpSanguin = 'selectGrpSanguin';
  static const String selectVilleResidence = 'selectVilleResidence';

  static const String yes = 'yes';
  static const String no = 'no';
  // static const String acceuil = 'acceuil';
  // static const String histMenu = 'histMenu';
  // static const String paramMenu = 'paramMenu';
  // static const String catMenu = 'catMenu';
  // static const String keyword = 'keyword';
  // static const String presta = 'presta';
  // static const String devPresta = 'devPresta';
  // static const String fPresta = 'fPresta';
  // static const String profil = 'profil';
  static const String langue = 'langue';
  static const String mention = 'mention';
  static const String about = 'about';
  static const String deconnexion = 'deconnexion';
  static const String email = 'email';
  static const String adresse = 'adresse';
  static const String mesAdresse = 'mesAdresse';
  static const String prestataire = 'prestataire';
  static const String locality = 'locality';
  static const String tarifs = 'tarifs';

  static const String reset = 'reset';
  static const String validate = 'validate';
  static const String location = 'location';
  static const String heure = 'heure';
  static const String jour = 'jour';
  static const String reservez = 'reservez';
  static const String reservation = 'reservation';

  static const String selectAdress = 'selectAdress';
  static const String dateTravaille = 'dateTravaille';
  static const String dateRendevous = 'dateRendevous';
  static const String custom = 'custom';
  static const String confirmer = 'confirmer';

  static const String services = 'services';

  static const String newAdress = 'newAdress';
  static const String designation = 'designation';
  static const String recupPos = 'recupPos';
  static const String maPosition = 'maPosition';
  static const String adresseSnack = 'adresseSnack';
  static const String modifAdresse = 'modifAdresse';
  static const String modifMessageAdresse = 'modifMessageAdresse';
  static const String createMessageAdresse = 'createMessageAdresse';
  static const String deleteMessageAdresse = 'deleteMessageAdresse';
  static const String commandes = 'commandes';
  static const String profilPresta = 'profilPresta';

  static const String ajoutService = 'ajoutService';
  static const String modifService = 'modifService';
  static const String saveModif = 'saveModif';
  static const String horaire = 'horaire';
  static const String place = 'place';
  static const String errorServiceStack = 'errorServiceStack';
  static const String errorServiceStack2 = 'errorServiceStack2';
  static const String dans = 'dans';
  static const String map = 'map';
  static const String sharePharma = 'sharePharma';
  static const String passwordModif = 'passwordModif';
  static const String oldPassw = 'oldPassw';
  static const String newPassw = 'newPassw';
  static const String changPasw = 'changPasw';
  static const String changMyPasw = 'changMyPasw';
  static const String confirmPassw = 'confirmPassw';
  static const String snackPass1 = 'snackPass1';
  static const String snackPass2 = 'snackPass2';
  static const String snackPass3 = 'snackPass3';
  static const String precedent = 'precedent';

  static const String unitprice = 'unitprice';

  static const String program = 'program';

  static const String additional = 'additional';

  static const String summary = 'summary';

  static const String total = 'total';
  static const String when = 'when';
  static const String position = 'position';
  static const String tout = 'tout';
  static const String endPay = 'endPay';
  static const String motif = 'motif';
  static const String motifReject = 'motifReject';
  static const String datePresta = 'datePresta';
  static const String saveChanges = 'saveChanges';
  static const String recupCurrent = 'recupCurrent';
  static const String loading = 'loading';
  static const String morethanThree = 'morethanThree';
  static const String avertissement = 'avertissement';
  static const String envoyer = 'envoyer';
  static const String jeMesouviens = 'jeMesouviens';
  static const String processV = 'processV';
  static const String load = 'load';
  static const String connectWait = 'connectWait';

  static const String deletesucces = 'deletesucces';
  static const String adresseName = 'adresseName';
  static const String renit = 'renit';
  static const String birthdate = 'birthdate';
  static const String test = 'test';
  static const String quickLoading = 'quickLoading';
  static const String quickPerson = 'quickPerson';
  static const String invalidNumber = 'invalidNumber';
  static const String chooseHoraireError = 'chooseHoraireError';
  //home

  // les langues
  static const Map<String, dynamic> FR = {
    phone: 'Téléphone.s',
    withK: 'Par',
    at: 'au',
    geolocation: 'Géolocalisation',
    sharePharmacieFirstText: 'Liste des Pharmacies de gardes\n\nsemaine du',
    shareLoading: 'Partage en cours...',
    finalizeProcess: "Finalisation de  l'inscription en cours... ",
    verifCurrent: 'Vérification en cours...',
    passMsg:
        'Vous avez passé cette étape sans confirmer de pays. Vous pouvez le faire plus tard dans les paramètres.',
    oneStep: 'Plus qu\'une étape',
    skipStep: 'Passer cette étape',
    successCountryMsg:
        'Configuration terminée. Vous pouvez la modifier plus tard dans les paramètres.',
    chooseActuCountry: 'Veuillez choisir votre pays',
    notActuCountry:
        "Vous n'êtes pas actuellement dans votre pays d'inscription ?",
    chooseActuCountryR:
        'Veuillez sélectionner votre pays de résidence pour béneficier des services de ce pays',
    notActuCountryR: "Félicitations !\n Votre inscription s'est bien terminée",
    pays: 'Pays de résidence',
    continuer: 'Continuer',
    firsText: 'Choisir une langue',
    onboardbtn3: 'Démarrer',
    title: 'langue',
    langueFr: 'Français',
    langueEn: 'Anglais',
    onboardbtn1: 'Passer',
    onboardbtn2: 'Suivant',
    welcome: 'Bienvenue',
    login: 'Se connecter',
    compte: 'Mon compte',
    create: 'Créer un compte',
    voirPlus: 'Voir plus',
    lastRecomm: 'Nos derniers conseils',
    pressTomove: 'Appui long sur un service pour le déplacer',
    rapidAccess: 'Accès rapide',
    updateUser: 'Modifier mon compte',
    loadingSaveAdresse: 'Enregistrement de l\'adresse en cours...',
    loadingUpdateAdresse: 'Modification de l\'adresse en cours...',
    loadingAdresse: 'Chargement des adresses en cours ',
    politique: 'Politique de confidentialité',
    condition: 'Conditions générales d\'utilisation',
    conditions: 'Conditions d\'utilisation',
    loadingLogout: 'Déconnexion en cours...',
    pharmacy: 'Pharmacies',
    pharmacyGarde: 'De garde',
    pharmacyProche: 'A proximité',
    pharmacyPeriode: 'Période du ',
    pharmacyEmpty: 'Aucune pharmacie trouvée',
    pharmacyCheck:
        'PS: Vous pouvez appeler cette pharmacie pour vérifier la disponibilté des produits.',
    pharmacyForm: 'Fiche de pharmacie',
    pharmacyLoading: 'Chargement des pharmacies en cours',
    conseilLoading: 'Chargement des conseils en cours',
    conseil: 'Conseils',
    noConseil: 'Aucun conseil trouvé',
    conseilForm: 'Fiche de conseil',
    conseilSave: 'Conseils enregistrés',
    actualite: 'Actualités',
    actuLoading: 'Chargement des actualités en cours ',
    actuForm: 'Fiche d\'actualité',
    actuEmpty: 'Aucune actualité disponible',
    agenda: 'Agenda',
    tousLestypes: 'Tous les types de consultations ',
    agendaEmpty: 'Aucun rendez-vous disponible',
    agendaLoading: 'Chargement des rendez-vous en cours',
    newApppoint: 'Nouveau rendez-vous',
    rdvCome: 'RDV à venir',
    rdvPast: 'RDV passés',
    delete: 'Supprimer',
    past: 'Passé',
    rdvCancel: 'Rendez-vous annulé',
    rdvReject: ' Rendez-vous rejeté',
    rdvAccept: ' Rendez-vous accepté',
    rdvPaid: 'Payé',
    rdvConfirm: 'Rendez-vous confirmé',
    rdvConfirmAttente: 'En attente de confirmation',
    startConsult: 'Démarrer la consultation',
    confirmAppoint: 'Confirmer le rendez-vous',
    loadingAppoint: 'Confirmation de rendez-vous en cours...',
    sheetAppoint: 'Fiche de rendez-vous',
    deleteText: "Vous voulez vraiment supprimer ce rendez-vous?",
    deleting: 'Suppression',
    deleteLoading: 'Suppresion de rendez-vous en cours...',
    canceling: 'Annulation',
    cancel: 'Annuler',
    cancelText: 'Vous voulez vraiment annuler ce rendez-vous?',
    cancelLoading: 'Annulation de rendez-vous en cours...',
    docLoading: 'Chargement des médecins en cours',
    docList: 'Liste des médecins',
    docSearch: 'Rechercher un médecin',
    docFilter: 'Filter médecins',
    docSpeciality: 'Spécialités',
    docConsultation: 'Consultation',
    docDetail: 'Détails médecin',
    apply: 'Appliquer',
    docLangue: 'Langue',
    docTypeConsult: 'Types de consultations',
    docExperience: 'Expériences',
    docFormation: 'Formations',
    docTravaux: 'Travaux et publications',
    docLangueTalk: 'Langues parlées',
    docAssoc: 'Associations',
    docInfo: 'Informations légales',
    docExpertise: 'Expertises',
    docEmpty: 'Aucun médecin trouvé',
    order: 'N° d\'ordre',
    close: 'Fermer',
    addApointLoading: 'Ajout de rendez-vous en cours...',
    submit: 'Soumettre',
    motifRdv: 'Motif de prise de rendez-vous',
    creneauLoading: 'Chargement des créneaux du médecin  en cours',
    notHourl: 'Aucun horaire disponible pour ce médecin',
    selectCons: 'Veuillez sélectionnez un type de consultation.',
    typeCons: 'Type de consultation:',
    prixCons: 'Prix de consultation:',
    startHour: 'Heure de début',
    onPay: 'Un paiement de',
    rembors:
        'non rembourable est requis pour confirmer votre prise de rendez-vous. Vous serez rédirigé vers une page de paiement pour éffectuer votre transaction',
    textInternet: 'Vérifiez votre connexion internet.',
    textLocalistation:
        "Pour continuer, autorisez l'accès à la localisation dans vos paramètres.",
    textError: 'Une erreure s\'est produite. Veuillez réessayer.',
    ressayer: 'Réessayez',
    adresseEmpty: 'Aucune adresse enrégistrée',
    adresseDelete: 'Voulez-vous supprimer cette adresse?',
    adresseDeleting: 'suppresion de l\'adresse en cours...',
    searchPharmacy: 'Rechercher une pharmacie',
    newIn: 'Nouveau sur %a ?',
    error: 'Erreur',
    success: 'Succès',
    motdepasse: 'Mot de passe',
    connectCurrent: 'Connexion en cours...',
    chooseCountry: 'Choisir le pays',
    verify: 'Vérifier',
    renseignText: 'Veuillez renseigner le numéro de téléphone',
    verifLoading: 'Vérification en cours ...',
    resendLoading: 'Renvoie de code en cours...',
    changingPassword: 'Changement de mot passe',
    readCondition: 'Veuillez lire et accepter nos conditions d\'utilisation',
    registerLoading: 'Inscription en cours...',
    iRegister: 'Je m\'inscris',
    conditionAccept: 'J\'accepte les',
    pinConfim: PIN_CONFIRM,
    title1: 'Prise de rendez-vous',
    title2: 'Dossier médical partagé',
    title3: 'Pharmacie de garde',
    title4: 'Conseils santé',
    notification: 'Notification',
    notifEmpty: 'Aucune notification',
    selectVilleResidence: 'Sélectionner votre ville de résidence',
    selectGrpSanguin: 'Sélectionner votre groupe sanguin',
    dialogTitle: 'Bientôt disponible',
    allService: 'Tous les services',
    customService: 'Personnaliser mes services',
    saveChoice: 'Enregistrer mes choix',
    required: 'Ce champ ne peut pas être vide',
    saveLocation: 'Enregistrer l\'adresse',
    residenceAdresse: 'Adresse de résidence',
    changingProgress: 'Modifications en cours...',
    differentPassword: 'Les mots de passe ne correspondent pas',
    dialogBody:
        'Cette fonctionnalité est en cours de déploiement et sera bientôt disponible chez vous. Merci de votre patience.',
    forget: 'Mot de passe oublié',
    noAccount: 'Vous n\'avez pas de compte?',
    signUp: 'S\'inscrire',
    username: 'Nom d\'utilisateur',
    password: 'Modifier mon mot de passe',
    connexion: 'Connexion',
    dialogBtnText: ' J\'ai compris',
    inscription: 'Inscription',
    bodyRegister: 'Créer un compte et continuer',
    surname: 'Nom',
    firstname: 'Prénoms',
    number: 'Numéro de téléphone',
    yesAccount: 'J\'ai un compte',
    sexeH: 'Masculin',
    sexeF: 'Féminin',
    code: 'Code de vérification',
    advanceText: 'Entrez le code pour continuer',
    otpBtn: 'Vérifier',
    resend: 'Renvoyer le code',
    serviceText: 'Quels services vous \nfaut-il ?',
    wait: "Veuillez patienter...",
    disconnectText:
        "Vous êtes sur le point de vous déconnecter. Veuillez cliquer sur \"Non\" pour revenir en arrière ou \"Oui\" pour continuer",
    yes: "Oui",
    no: "Non",
    langue: 'Modifier la langue',
    mention: 'Mentions légales',
    about: 'A propos',
    deconnexion: 'Déconnexion',
    email: 'Email',
    adresse: 'Adresse',
    mesAdresse: 'Mes adresses',
    prestataire: 'Prestataires',
    locality: 'Toutes les localités',
    tarifs: 'Tarifs',
    reset: 'Réinitialiser',
    validate: 'Valider',
    location: 'Choix localité.s',
    heure: 'Heure',
    jour: 'Jour',
    reservez: 'Réserver',
    reservation: 'Réservations',
    selectAdress: 'Sélectionner une adresse',
    dateTravaille: 'Date',
    dateRendevous: 'Date rendez-vous',
    custom: 'Periode',
    confirmer: 'Confirmer',
    services: 'Services',
    newAdress: 'Nouvelle adresse',
    designation: 'Désignation',
    recupPos: 'Récupérer ma localistation actuelle',
    maPosition: 'Enrégistrer ma position',
    adresseSnack: 'Veuillez entrer un nom',
    modifAdresse: 'Modifier l\'adresse',
    modifMessageAdresse: 'Adresse modifiée avec succès',
    createMessageAdresse: 'Nouvelle adresse créée avec succès',
    deleteMessageAdresse: 'Adresse supprimée avec succès',
    commandes: 'Commandes',
    profilPresta: 'Profil',
    ajoutService: 'Ajouter un service',
    modifService: 'Modifier service',
    saveModif: 'Enrégistrer modification',
    horaire: 'Horaire',
    place: 'Lieu',
    errorServiceStack: 'Tous les champs doivent être remplis',
    errorServiceStack2: 'Veuillez choisir un service',
    dans: 'dans',
    map: 'Voir sur une carte',
    sharePharma: 'Partager la pharmacie',
    oldPassw: 'Ancien mot de passe',
    newPassw: 'Nouveau mot de passe',
    changPasw: 'Modifier mot de passe',
    changMyPasw: 'Modifier mon mot de passe',
    confirmPassw: 'Confirmation mot de passe',
    snackPass1:
        'Le nouveau mot de passe doit être différent de l\'ancien mot de passe',
    snackPass2:
        'Le nouveau mot de passe et la confirmation ne correspondent pas',
    snackPass3: 'Tous les champs doivent être remplis',
    precedent: 'Précédent',
    unitprice: 'Prix',
    program: 'Programmer',
    additional: 'Informations supplementaires',
    summary: 'Récapitulatif',
    total: 'Prix total',
    when: 'Quand',
    position: ' Ma position',
    tout: ' Tout',
    endPay: 'Finaliser le paiement',
    motif: 'Motif',
    motifReject: 'Motif de rejet',
    datePresta: 'Date de prestation',
    saveChanges: 'Enrégistrer les modifications',
    recupCurrent: 'Récupération de la position actuelle',
    loading: 'Soumission en cours',
    morethanThree: 'Vous ne pouvez pas ajouter de trois services',
    avertissement: 'Avertissement!',
    envoyer: 'Envoyer',
    jeMesouviens: 'Je me souviens!',
    processV: 'Procéder à la vérification',
    load: 'Chargement en cours ...',
    connectWait: 'Connexion en cours...',
    deletesucces: "Êtes-vous sûr de vouloir annuler?",
    renit: 'Rénitialisation de mot de passe',
    birthdate: 'Date de naissance',
    test: 'un',
    quickLoading: 'Enregistrement des accès rapides en cours...',
    quickPerson: 'Vos accès rapides ont été personnalisés avec succès',
    rdv: 'rendez-vous en attente',
    invalidNumber: 'Format de numéro incorrect',
    langueMessage: 'Langue modifié avec succès',
    liaison: 'Liaison sécurisée',
    onlineConsult: 'Consultation en ligne',
    cryptProgress: 'Cryptage des informations en cours ...',
    securityMeet:
        'La connexion avec votre médecin est sécurisée. Les appels sont chiffrés de bout en bout. Aucune autre personne, ni même Kondjigbale ne peut les écouter.',
    startMeetProgress: 'Démarrage de la réunion ... ',
    startMeetNow: 'Démarrer maintenant',
    chooseHoraireError: 'Veuillez choisir un horaire pour continuer!'
  };
  static const Map<String, dynamic> EN = {
    withK: 'By',

    at: 'to',
    phone: 'Phone.s',
    sharePharmacieFirstText: 'List of on-call pharmacies\n\nweek from',

    shareLoading: 'Sharing in progress...',
    finalizeProcess: "Finalizing registration in progress...",
    verifCurrent: 'Verification in progress...',
    geolocation: 'Geolocation',
    passMsg:
        'You skipped this step without confirming a country. You can do so later in the settings.',
    successCountryMsg:
        'Configuration complete. You can modify it later in the settings.',
    oneStep: 'One step left',
    skipStep: 'Skip this step',
    chooseActuCountryR:
        'Please select your current country of residence to access services in that country.',

    chooseActuCountry:
        'Please select your current country of residence to access services in that country.',
    notActuCountry: "Are you currently outside your country of registration?",
    notActuCountryR: "Congratulations !\n Your registration is complete.",
    pays: 'Country of Residence',
    langueMessage: 'Language successfully modified',

    onboardbtn3: 'Start',
    continuer: 'Continue',
    voirPlus: 'See More',
    lastRecomm: 'Our latest advices',
    pressTomove: 'Long press on a service to move it',
    rapidAccess: 'Rapid access',
    allService: 'All the services',
    customService: 'Personalize services',
    saveChoice: 'Save choices',
    updateUser: 'Update account',
    required: 'This field can not be empty',
    saveLocation: 'Save address',
    loadingSaveAdresse: 'Address registration in progress...',
    loadingUpdateAdresse: 'Address modification in progress...',
    loadingAdresse: 'Loading addresses in progress...',
    residenceAdresse: 'Residence address',
    changingProgress: 'Changes in progress...',
    politique: 'Privacy policy',
    condition: 'Terms and conditions of use',
    conditions: 'Terms of use',
    loadingLogout: 'Logout in progress...',
    pharmacy: 'Pharmacies',
    pharmacyGarde: 'On call',
    pharmacyProche: 'At proximity',
    pharmacyPeriode: 'Period from ',
    pharmacyEmpty: 'No pharmacies found',
    pharmacyCheck:
        'PS: You can call this pharmacy to check product availability.',
    pharmacyForm: 'Pharmacy sheet',
    pharmacyLoading: 'Loading pharmacies in progress',
    conseilLoading: 'Loading advices in progress',
    conseil: 'Advices',
    noConseil: 'No advice found',
    conseilForm: 'Advice sheet',
    conseilSave: 'Saved advices',
    actualite: 'News',
    actuLoading: 'Loading news in progress.',
    actuForm: 'News sheet',
    actuEmpty: 'No new available',
    agenda: 'Agenda',
    tousLestypes: 'All types of consultations ',
    agendaEmpty: 'No available appointments',
    agendaLoading: 'Loading current appointments',
    newApppoint: 'New appointment',
    rdvCome: 'Upcoming dates',
    rdvPast: 'Past dates',
    delete: 'Delete',
    past: 'Past',
    rdvCancel: 'Appointment cancelled',
    rdvReject: 'Appointment rejected',
    rdvAccept: 'Appointment accepted',
    rdvPaid: 'Paid',
    rdvConfirm: 'Appointment confirmed',
    rdvConfirmAttente: 'Awaiting confirmation',
    startConsult: 'Start consultation',
    confirmAppoint: 'Confirm appointment',
    loadingAppoint: 'Appointment confirmation in progress...',
    sheetAppoint: 'Appointment details',
    deleteText: "Do you really want to delete this appointment?",
    deleting: 'Deleting',
    deleteLoading: 'Delete current appointment...',
    canceling: 'Cancellation',
    cancel: 'Cancel',
    cancelText: 'Do you really want to cancel this appointment?',
    cancelLoading: 'Cancellation of current appointment...',
    docLoading: 'Loading current doctors',
    docList: 'List of doctors',
    docSearch: 'Search for a doctor',
    docFilter: 'Filter doctors',
    docSpeciality: 'Specialties',
    docConsultation: 'Consultation',
    docDetail: 'Doctor\'s details',
    apply: 'Apply',
    docLangue: 'Language',
    docTypeConsult: 'Types of consultations',
    docExperience: 'Experiences',
    docFormation: 'Formations',
    docTravaux: 'Work and publications',
    docLangueTalk: 'Spoken languages',
    docAssoc: 'Associations',
    docInfo: 'Legal information',
    docExpertise: 'Expertises',
    docEmpty: 'No doctors found',
    order: 'Order no',
    close: 'Close',
    addApointLoading: 'Add current appointment...',
    submit: 'Submit',
    motifRdv: 'Reason for appointment',
    creneauLoading: 'Loading current doctor\'s slots',
    notHourl: 'No slots available for this doctor',
    selectCons: 'Please select a consultation type.',
    typeCons: 'Consultation type:',
    prixCons: 'Consultation price:',
    startHour: 'Start time',
    onPay: 'A payment of',
    rembors:
        'no rembourable is required to confirm your appointment. You will be redirected to a payment page to complete your transaction',
    textInternet: 'Check your internet connection.',
    textLocalistation:
        'To continue, please allow location access in your settings.',
    textError: 'An error has occurred. Try Again.',
    ressayer: 'Try again',
    adresseEmpty: 'No address registered',
    adresseDelete: 'Do you want to delete this address?',
    adresseDeleting: 'deletion of the current address...',
    searchPharmacy: 'Search for a pharmacy',
    newIn: 'New on %a?',
    error: 'Error',
    success: 'Success',
    motdepasse: 'Password',
    connectCurrent: 'Connection in progress...',
    chooseCountry: 'Choose country',
    verify: 'Verify',
    renseignText: 'Please enter the phone number',
    verifLoading: 'Checking in progress ...',
    resendLoading: 'Resend current code...',
    changingPassword: 'Change password',
    readCondition: 'Please read and accept our terms of use',
    registerLoading: 'Registration in progress...',
    iRegister: 'I\'m registering',
    differentPassword: 'Passwords don\'t match',
    conditionAccept: 'I accept the ',
    pinConfim: 'All fields are required',
    title1: 'Appointment booking',
    title2: 'Shared medical record',
    title3: 'Pharmacy on call',
    title4: 'Health advice',
    firsText: 'Choose a language',
    title: 'Language',
    langueFr: 'French',
    langueEn: 'English',
    onboardbtn1: 'Skip',
    onboardbtn2: 'Next',

    welcome: 'Welcome',
    login: 'Login',
    compte: 'My account',
    create: 'Create an account',
    // back: 'Back',
    forget: 'Password forgot',
    noAccount: 'Don\'t have an account?',
    signUp: 'Signup now',
    username: 'Username',
    password: 'Update a password',
    connexion: 'Login',
    dialogTitle: 'Coming soon',
    dialogBody:
        'This feature is currently being deployed and will soon be available to you. Thank you for your patience.',
    dialogBtnText: 'Understood',
    inscription: 'Registration',
    bodyRegister: 'Create an account and continue',
    surname: 'Name',
    firstname: 'First name',
    number: 'Phone number',
    help: 'Need help',
    yesAccount: 'I have an account',
    sexeH: 'Male',
    sexeF: 'Female',
    code: 'Verification code',
    advanceText: 'Enter code to continue',
    otpBtn: 'Verify',
    resend: 'Resend code',
    serviceText: 'What services do \nyou need?',
    wait: "Please wait...",
    disconnectText:
        'You are about to log out. Please click "No" to go back or "Yes" to continue',
    yes: "Yes",
    no: "No",
    langue: 'Update a language',
    mention: 'Terms of use',
    about: 'About us',
    deconnexion: 'Logout',
    email: 'Email',
    adresse: 'Address',
    mesAdresse: 'My addresses',
    prestataire: 'Providers',
    locality: 'All locations',
    tarifs: 'Prices',
    reset: 'Reset',
    validate: 'Validate',
    location: 'Select location.s',
    heure: 'Time',
    jour: 'Day',
    reservez: 'Book',
    reservation: 'Reservations',
    selectAdress: 'Select adress',
    dateTravaille: 'Date',
    dateRendevous: 'Appointment date',
    custom: 'Period',
    confirmer: 'Confirm',
    services: 'Services',
    newAdress: 'New address',
    designation: 'Designation',
    recupPos: 'Get my current localisation',
    maPosition: 'Save my adress',
    adresseSnack: 'Please enter a designation',
    modifAdresse: 'Modify address',
    commandes: 'Orders',
    profilPresta: 'Profile',
    ajoutService: 'Add service',
    modifService: 'Update service',
    saveModif: 'Save',
    horaire: 'Hourly',
    place: 'Location',
    errorServiceStack: 'All fields are required',
    errorServiceStack2: 'Please select a service',
    notification: 'Notification',
    notifEmpty: 'No notification',
    selectVilleResidence: 'Select your city of residence',
    selectGrpSanguin: 'Select your blood type',
    dans: 'in',
    map: 'See on a map',
    sharePharma: 'Share a pharmacy',

    oldPassw: 'Old password',
    newPassw: 'New password',
    changPasw: 'Update password',
    changMyPasw: 'Update my password',
    confirmPassw: 'Confirm password',
    snackPass1: 'new password must be different from the old password',
    snackPass2: 'New password and confirmation do not match',
    snackPass3: 'All fields are required',
    precedent: 'Previous',
    unitprice: 'Price',
    program: 'Program',
    additional: 'Additional information',
    summary: 'Summary',
    total: 'Total price',
    when: 'When',
    position: 'My position',
    tout: ' All',
    endPay: 'Finalize payment',
    motif: 'Reason',
    motifReject: 'Reason for rejection',
    datePresta: 'Date of service',
    saveChanges: 'Saves changes',
    recupCurrent: 'Recovery of current position ',
    loading: 'Submission in progress',
    morethanThree: 'You cannot add three services',
    avertissement: 'Warning!',
    envoyer: 'Send',
    jeMesouviens: 'I remember!',
    processV: 'Proceed to verification',
    load: 'Loading ...',
    connectWait: 'Connecting...',
    deletesucces: 'Are you sure you want to cancel?',
    renit: 'Password reset',
    birthdate: 'Date of birth',
    test: 'One',
    quickLoading: 'Saving current quick accesses...',
    quickPerson: 'Your quick accesses have been successfully personalized',
    rdv: 'rendez-vous en attente',
    modifMessageAdresse: 'Address successfully modified',
    createMessageAdresse: 'New address created with success',
    deleteMessageAdresse: 'Address deleted successfully',
    invalidNumber: 'Wrong number format',
    liaison: 'Secure link',
    onlineConsult: 'Online consultation',
    cryptProgress: 'Encryption of current information ...',
    securityMeet:
        'The connection with your doctor is secure. Calls are encrypted from end to end. No other person, not even Kondjigbale, can listen in.',
    startMeetProgress: 'Starting the meeting ... ',
    startMeetNow: 'Start now',
    chooseHoraireError: 'Please select a schedule to continue!',
  };
}
