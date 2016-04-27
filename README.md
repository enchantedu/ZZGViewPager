# ZZGViewPager
 Use UICollectionView to realize this view pager
 
 
 How to use ?
 
1. init a ZZGPagerViewController and  add  ZZGPagerViewController.view to you UIViewController.view
 
2.realize the delegate and datasource in you UIViewController

3.ZZGPagerViewControllerDataSource

- (NSInteger)numberOfViewControllers:(ZZGPagerViewController *)pagerViewController;


- (UIViewController *)pagerViewController:(ZZGPagerViewController *)pagerViewController viewControllerAtIndex:(NSInteger)index;


- (NSString *)pagerViewController:(ZZGPagerViewController *)pagerViewController titleAtIndex:(NSInteger)index;


@optional
//todo
- (UIView *)pagerViewController:(ZZGPagerViewController *)pagerViewController customViewAtIndex:(NSInteger)index;

4.ZZGPagerViewControllerDelegate

- (void)pagerViewController:(ZZGPagerViewController *)pagerViewController didSelectTabAtIndex:(NSUInteger)index;



