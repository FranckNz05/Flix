# Clone Netflix - Application Flutter

Ce projet est un clone de l'application Netflix développé avec Flutter. Il reproduit l'interface et certaines fonctionnalités de base de Netflix.

## Fonctionnalités

- Écran de démarrage (Splash Screen) avec animation
- Navigation entre différentes sections
- Affichage des films et séries
- Lecture de vidéos
- Interface utilisateur fidèle à Netflix
- Gestion des profils

## Prérequis

Pour exécuter ce projet, vous devez avoir installé :

1. [Flutter](https://flutter.dev/docs/get-started/install) (dernière version stable)
2. [Git](https://git-scm.com/downloads)
3. Un éditeur de code (VS Code, Android Studio, etc.)
4. Chrome (pour le développement web)

## Installation

1. Clonez le dépôt :
   ```bash
   git clone [URL_DU_REPO]
   cd netflix_clone
   ```

2. Installez les dépendances :
   ```bash
   flutter pub get
   ```

3. Lancez l'application :
   ```bash
   flutter run -d chrome  # Pour le web
   # ou
   flutter run            # Pour un émulateur/appareil mobile
   ```

## Structure du Projet

```
lib/
├── models/              # Modèles de données
│   └── movie.dart       # Modèle pour les films et séries
│
├── screens/             # Écrans de l'application
│   ├── splash_screen.dart     # Écran de démarrage
│   ├── main_screen.dart       # Écran principal avec navigation
│   ├── home_screen.dart       # Écran d'accueil
│   ├── new_content_screen.dart # Nouveautés
│   └── profile_screen.dart    # Profil utilisateur
│
├── widgets/             # Widgets réutilisables
│   ├── custom_app_bar.dart    # Barre d'application personnalisée
│   ├── content_header.dart    # En-tête avec image principale
│   ├── content_list.dart      # Liste de contenu horizontale
│   ├── netflix_navigation_bar.dart # Barre de navigation
│   └── video_player_widget.dart    # Lecteur vidéo
│
└── main.dart           # Point d'entrée de l'application
```

## Description des Composants

### Models
- `movie.dart` : Définit la structure des données pour les films et séries (titre, description, images, etc.)

### Screens
- `splash_screen.dart` : Écran de démarrage avec logo Netflix et animation
- `main_screen.dart` : Gère la navigation principale entre les différentes sections
- `home_screen.dart` : Affiche le contenu principal et les recommandations
- `new_content_screen.dart` : Présente les nouveautés et contenus récents
- `profile_screen.dart` : Gère le profil utilisateur et les paramètres

### Widgets
- `custom_app_bar.dart` : Barre supérieure avec logo et navigation
- `content_header.dart` : Affiche le contenu mis en avant
- `content_list.dart` : Liste horizontale de films/séries
- `netflix_navigation_bar.dart` : Barre de navigation inférieure
- `video_player_widget.dart` : Gère la lecture des vidéos

## Styles et Thèmes

L'application utilise un thème sombre inspiré de Netflix avec :
- Fond noir (`Colors.black`)
- Accents rouges (`Colors.red`)
- Police Montserrat via Google Fonts
- Animations fluides pour les transitions

## Dépendances Principales

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.1.0
  cached_network_image: ^3.3.0
  carousel_slider: ^4.2.1
  flutter_bloc: ^8.1.3
  dio: ^5.4.0
  video_player: ^2.8.1
  chewie: ^1.7.4
  shared_preferences: ^2.2.2
  flutter_svg: ^2.0.9
  shimmer: ^3.0.0
  flutter_spinkit: ^5.2.0
```

## Configuration

1. Le fichier `pubspec.yaml` contient toutes les dépendances
2. Les images et assets sont chargés depuis des URLs (possibilité d'ajouter des assets locaux)
3. La configuration des thèmes est dans `main.dart`

## Déploiement

Pour créer une version de production :

```bash
# Pour Android
flutter build apk --release

# Pour iOS
flutter build ios --release

# Pour le Web
flutter build web --release
```

## Conseils de Développement

1. Utilisez `flutter run -d chrome` pour le développement web rapide
2. Le hot reload (`r`) permet de voir les changements en temps réel
3. Vérifiez les erreurs avec `flutter analyze`
4. Testez sur différents appareils pour la responsivité

## Résolution des Problèmes Courants

1. Si les dépendances posent problème :
   ```bash
   flutter clean
   flutter pub get
   ```

2. Pour les problèmes de cache :
   ```bash
   flutter pub cache repair
   ```

3. Pour les problèmes de compilation web :
   ```bash
   flutter config --enable-web
   flutter create .
   ```

## Prochaines Étapes

1. Intégration d'une API de films (TMDB)
2. Ajout de l'authentification
3. Implémentation du système de recherche
4. Gestion des favoris
5. Support du mode hors ligne

## Ajout de Contenu Personnalisé

### Assets (Images et Vidéos)
Pour ajouter vos propres médias au projet :

1. Placez vos fichiers dans le dossier `assets/` :
   ```
   assets/
   ├── images/     # Pour les images (.png, .jpg, .jpeg)
   └── videos/     # Pour les vidéos
   ```

2. Déclarez les assets dans `pubspec.yaml` :
   ```yaml
   flutter:
     assets:
       - assets/images/
       - assets/videos/
   ```

3. Pour utiliser une image dans le code :
   ```dart
   Image.asset('assets/images/mon_image.jpg')
   ```

### Création de Films/Séries de Test

Pour ajouter un nouveau film ou une série de test, modifiez le fichier `lib/models/movie.dart` :

```dart
final Movie monFilm = Movie(
  title: 'Titre du Film',
  description: 'Description du film...',
  imageUrl: 'assets/images/mon_film.jpg',
  videoUrl: 'assets/videos/mon_film.mp4',
);
```

## Contact

Pour toute question ou suggestion, vous pouvez me contacter :

- **Téléphone** : 
  - +242 064088868
  - +242 057668371
- **Email** : francknz05@gmail.com
