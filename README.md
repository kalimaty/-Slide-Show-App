# -Slide-Show-App

![1](https://github.com/kalimaty/-Slide-Show-App/assets/105967966/4b198197-159c-43e7-8f7c-99e6343b0ed5)


![2](https://github.com/kalimaty/-Slide-Show-App/assets/105967966/f13437dd-07f9-4c6b-9911-0715989032ab)



![3](https://github.com/kalimaty/-Slide-Show-App/assets/105967966/7fe29851-9fb6-49ed-b454-7eee131b90c8)



![4](https://github.com/kalimaty/-Slide-Show-App/assets/105967966/4be6d43b-688c-4d2a-8914-ae6ba1be986b)



![5](https://github.com/kalimaty/-Slide-Show-App/assets/105967966/c593588d-f2ae-4b85-b627-5b14989488b2)

Project Overview:
The Slide Show App is an interactive application designed to provide users with a dynamic slideshow experience featuring various topics. Each topic contains a series of images with associated names. The application includes text-to-speech functionality to read aloud the names of the images as they are displayed. The app aims to be educational, engaging, and user-friendly, making it suitable for various audiences, including children.

Key Features:

    Topic Selection:
        Users can choose from a list of topics.
        Each topic consists of a collection of images and their corresponding names.

    Image Slideshow:
        Displays images in a slideshow format.
        Each image's name is spoken aloud using text-to-speech (TTS) technology.
        Automatic progression through images every few seconds.

    End Screen:
        When the slideshow ends, users are navigated to an end screen.
        Users can choose to return to the topic selection screen.

    History:
        Users can view a history of the images and their names.
        Includes a feature to replay the name of each image using TTS.

    Responsive Design:
        Ensures the app looks good on various screen sizes and orientations.

Technologies Used:

    Flutter: For building the user interface and managing state.
    Provider: For state management.
    Flutter TTS: For text-to-speech functionality.
    Flow Chart

 
![flow](https://github.com/kalimaty/-Slide-Show-App/assets/105967966/cc30ba90-ed1e-420a-ab8d-fdb4f1fc3042)

Description of the Project

Project Name: Slide Show App

Project Overview:
The Slide Show App is an interactive application designed to provide users with a dynamic slideshow experience featuring various topics. Each topic contains a series of images with associated names. The application includes text-to-speech functionality to read aloud the names of the images as they are displayed. The app aims to be educational, engaging, and user-friendly, making it suitable for various audiences, including children.

Key Features:

    Topic Selection:
        Users can choose from a list of topics.
        Each topic consists of a collection of images and their corresponding names.

    Image Slideshow:
        Displays images in a slideshow format.
        Each image's name is spoken aloud using text-to-speech (TTS) technology.
        Automatic progression through images every few seconds.

    End Screen:
        When the slideshow ends, users are navigated to an end screen.
        Users can choose to return to the topic selection screen.

    History:
        Users can view a history of the images and their names.
        Includes a feature to replay the name of each image using TTS.

    Responsive Design:
        Ensures the app looks good on various screen sizes and orientations.

Technologies Used:

    Flutter: For building the user interface and managing state.
    Provider: For state management.
    Flutter TTS: For text-to-speech functionality.

 



Detailed Steps

    Topic Selection Screen:
        User opens the app and is presented with a list of topics.
        Each topic is displayed with a title.

    Topic Screen:
        Upon selecting a topic, the user sees a list of images related to that topic.
        Each image can be selected to start a slideshow.

    Slideshow Screen:
        The slideshow starts by displaying the first image and speaking its name using TTS.
        Every few seconds, the app automatically transitions to the next image and repeats the TTS.
        This continues until the last image.

    End Screen:
        Once the last image is displayed, the app navigates to the end screen.
        The user is given an option to return to the topic selection screen.

    History Screen:
        Accessible from the topic screen, this screen shows a list of all images and their names.
        Users can replay the name of each image using TTS.

    Returning to Topic Selection:
        From the end screen or history screen, users can navigate back to the topic selection screen to choose a new topic.

Implementation Notes

    State Management:
        Provider is used to manage the state of the selected topic and the slideshow progress.

    Text-to-Speech:
        The FlutterTts package is used to convert text to speech.
        It is integrated into the slideshow provider to ensure names are spoken as images are displayed.

    Navigation:
        Flutter's navigation system is used to move between screens.
        The Navigator.pushReplacement method ensures that the user cannot navigate back to a completed slideshow.

By following this plan, the app ensures a smooth user experience and effective educational value through interactive image slideshows and text-to-speech technology.
an interactive application designed to provide users with a dynamic slideshow 
