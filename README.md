# Meme-Me

MemeMe app is a meme creating app. It allows users to take a photo or use existing photos and tranform it to a image meme by adding texts on it. Users can also save memes that they've created and share them through email or other applications. This app mainly utilizes collection view and table view to arrange created memes.

I developed this application using a number of important design paradigms and best practices. One of the most important design pattern that I have learnt was the Model View Controller (MVC). I created a Meme struct model object and a MemeCollection struct model for storing and processing Memes. The concept of separating model data, UI views and controllers became evidently useful when developming mobile applications.

I ensured model data, view and controller components are completely separated from one another. This allows easy encorporation of core data, since the model data is abstracted away from the view and view controllers. I also used delegation and protocol methods to send messages between one component to another.

I also encountered optionals and unwrapped them when necesarry. I only used "!" the implicit unwrap operator, when I am positive that the variable would not be nil.

Mainly, I used storyboard for UI design, but I have also written code to adjust several UI element on runtime. I realised that manually creating and changing UI component with code is really useful in terms of consolidating the ideas and actual mechanics behind the scenes. I have used both segues and storyboard instantiation methods to navigate between screens, and I personally prefer instantiating with code.

## Installation

1. git clone https://github.com/mmmk84512/Meme-Me
2. open MemeMe.xcodeproj

## Features
- Create a Meme by taking or selecting a photo
- Add text to the top and bottom
- Share and Save your Meme
- View saved Memes in a UITableView and a UICollectionView
- View a saved Meme
- Edit a saved Meme
- Delete saved Memes

## Project Overview

### Meme Collection View

This view consists of all the memes users have created in a grid layout. Users can easily scroll through and examine each meme by tapping on it. I used a collectionViewController that implements the delegate and data source required for a collection view. For each grid cell, I created a custom collectionViewCell to include an imageView and populate it from the created meme model data.
The top right buttom will take user to the Meme editor view.

### Meme Table View

This view is similar to the collection view. But instead of presenting the memes in a grid layout, I also implemented a table view layout. Each cell is a custom tableView cell with imageView and and a text label. The table view controller delegate and data source protocals are very similar to collectionViewController.

### Meme Editor View

This view allows users to edit images and create memes. Users will be presented with two choices, one to take a photo and one to choose a photo from library. Once user has prceeded with either one of the option, the image will appear in the view with a top text label and a bottom text label that allows users to write their meme messages. The top left button is tapped to share and save the image. Memes saved will be shown in both meme table view and meme collection view

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request
