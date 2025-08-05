import XCTest

class UITests: Runner {
    // MARK: Screens
    lazy var homeScreen: HomeScreen = .init(app: app)
    lazy var bibleStudyScreen: BibleStudyScreen = .init(app: app)
    lazy var feedScreen: FeedScreen = .init(app: app)
    lazy var exploreScreen: ExploreScreen = .init(app: app)
    
    lazy var bibleReadingScreen: BibleReadingScreen = .init(app: app)
    lazy var profileScreen: ProfileScreen = .init(app: app)
    
    lazy var myProfile: MyProfile = .init(app: app)
    lazy var donationScreen: DonationScreen = .init(app: app)
    lazy var liveStreamScreen: LiveStreamScreen = .init(app: app)
    lazy var multiSelectionScreen: MultiSelectionScreen = .init(app: app)
    lazy var holyPlacesMapScreen: HolyPlacesMapScreen  = .init(app: app)
    
    // MARK: EmailFild
    lazy var emailInputView: EmailInputView = .init(app: app)
    
    // MARK: Common Components
    lazy var navigationTabBar: NavigationTabBar = .init(app: app)
    
 
    

}
