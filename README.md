# Meme-Me

MemeMe app is a meme creating app. It allows users to take a photo or use existing photos and tranform it to a image meme by adding texts on it. Users can also save memes that they've created and share them through email or other applications. This app mainly utilizes collection view and table view to arrange created memes.

I developed this application using a number of important design paradigms and best practices. One of the most important design pattern that I have learnt was the Model View Controller (MVC). I created a Meme struct model object and a MemeCollection struct model for storing and processing Memes. The concept of separating model data, UI views and controllers became evidently useful when developming mobile applications.

I ensured model data, view and controller components are completely separated from one another. This allows easy encorporation of core data, since the model data is abstracted away from the view and view controllers. I also used delegation and protocol methods to send messages between one component to another.

I also encountered optionals and unwrapped them when necesarry. I only used "!" the implicit unwrap operator, when I am positive that the variable would not be nil.

Mainly, I used storyboard for UI design, but I have also written code to adjust several UI element on runtime. I realised that manually creating and changing UI component with code is really useful in terms of consolidating the ideas and actual mechanics behind the scenes. I have used both segues and storyboard instantiation methods to navigate between screens, and I personally prefer instantiating with code.

## Installation

1. git clone https://github.com/mmmk84512/Meme-Me
2. open MemeMe.xcodeproj

## Usage

### Meme Collection View

### Meme Table View

### Meme Detail View

### Meme Editor View

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request
