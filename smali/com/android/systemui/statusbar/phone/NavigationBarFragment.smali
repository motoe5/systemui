.class public Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.super Landroid/app/Fragment;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;,
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;,
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;
    }
.end annotation


# static fields
.field private static mNavBarFragmentViewVisiblity:Z

.field private static mNavigationBarFragmentView:Landroid/view/View;


# instance fields
.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisabledFlags1:I

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field public mHomeBlockedThisTouch:Z

.field private mLastLockToAppLongPress:J

.field private mLayoutDirection:I

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

.field private mNavigationBarMode:I

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field private mRecents:Lcom/android/systemui/recents/Recents;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSystemUiVisibility:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .param p1, "screenOn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .param p1, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarFragmentViewVisiblity:Z

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 111
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    .line 113
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 654
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$9;-><init>(Ljava/lang/Object;)V

    .line 653
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 668
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 691
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    return-void
.end method

.method public static addNavigationBarFragmentView(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 748
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarFragmentView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 749
    return-void

    .line 751
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 753
    const/16 v3, 0x7e3

    .line 754
    const v4, 0x20840068

    .line 760
    const/4 v5, -0x3

    move v2, v1

    .line 751
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 761
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 763
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 766
    :cond_1
    const-string/jumbo v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 767
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 769
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarFragmentView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setNavBarFragmentViewVisiblity(Z)V

    .line 771
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .prologue
    const/4 v1, -0x1

    const/4 v9, 0x0

    .line 704
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 706
    const/16 v3, 0x7e3

    .line 707
    const v4, 0x20840068

    .line 713
    const/4 v5, -0x3

    move v2, v1

    .line 704
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 714
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 716
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 719
    :cond_0
    const-string/jumbo v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 720
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 722
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 723
    const v2, 0x7f0d009f

    .line 722
    invoke-virtual {v1, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 726
    .local v8, "navigationBarView":Landroid/view/View;
    if-nez v8, :cond_1

    return-object v9

    .line 728
    :cond_1
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    invoke-static {v8}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v7

    .line 730
    .local v7, "fragmentHost":Lcom/android/systemui/fragments/FragmentHostManager;
    new-instance v6, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;-><init>()V

    .line 731
    .local v6, "fragment":Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    invoke-virtual {v7}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 732
    const-string/jumbo v2, "NavigationBar"

    const v3, 0x7f0a01cf

    .line 731
    invoke-virtual {v1, v3, v6, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 734
    const-string/jumbo v1, "NavigationBar"

    invoke-virtual {v7, v1, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 735
    return-object v8
.end method

.method public static getNavBarFragmentViewVisiblity()Z
    .locals 1

    .prologue
    .line 782
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarFragmentViewVisiblity:Z

    return v0
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    .line 387
    return-void
.end method

.method private onAccessibilityClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked()V

    .line 579
    return-void
.end method

.method private onAccessibilityLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 585
    const/4 v1, 0x1

    return v1
.end method

.method private onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 413
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    return v4

    .line 419
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 438
    :cond_1
    :goto_0
    :pswitch_0
    return v3

    .line 421
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 424
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    const-string/jumbo v1, "NavigationBar"

    const-string/jumbo v2, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    .line 429
    return v4

    .line 435
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onLongPressBackRecents(Landroid/view/View;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 504
    const/4 v7, 0x0

    .line 505
    .local v7, "sendBackLongPress":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 506
    .local v2, "activityManager":Landroid/app/IActivityManager;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v10

    .line 507
    .local v10, "touchExplorationEnabled":Z
    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v4

    .line 508
    .local v4, "inLockTaskMode":Z
    if-eqz v4, :cond_5

    xor-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_5

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 512
    .local v8, "time":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J

    sub-long v12, v8, v12

    const-wide/16 v14, 0xc8

    cmp-long v11, v12, v14

    if-gez v11, :cond_2

    .line 513
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskMode()V

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 517
    const-string/jumbo v12, "fps_onenav_enabled"

    const/4 v13, 0x0

    .line 515
    invoke-static {v11, v12, v13}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    .line 518
    .local v5, "isOneNavEnabled":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 519
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTsbForScreenPinning(Z)V

    .line 523
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 524
    const/4 v11, 0x1

    return v11

    .line 515
    .end local v5    # "isOneNavEnabled":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "isOneNavEnabled":Z
    goto :goto_0

    .line 525
    .end local v5    # "isOneNavEnabled":Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v11

    const v12, 0x7f0a0046

    if-ne v11, v12, :cond_3

    .line 526
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->isPressed()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 525
    if-eqz v11, :cond_3

    .line 529
    const/4 v7, 0x1

    .line 531
    :cond_3
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J

    .line 555
    .end local v8    # "time":J
    :cond_4
    :goto_1
    if-eqz v7, :cond_a

    .line 556
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-object v6, v0

    .line 557
    .local v6, "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    const/4 v11, 0x0

    const/16 v12, 0x80

    invoke-virtual {v6, v11, v12}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 558
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 559
    const/4 v11, 0x1

    return v11

    .line 534
    .end local v6    # "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v11

    const v12, 0x7f0a0046

    if-ne v11, v12, :cond_6

    .line 535
    const/4 v7, 0x1

    goto :goto_1

    .line 536
    :cond_6
    if-eqz v10, :cond_9

    if-eqz v4, :cond_9

    .line 539
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskMode()V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 543
    const-string/jumbo v12, "fps_onenav_enabled"

    const/4 v13, 0x0

    .line 541
    invoke-static {v11, v12, v13}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v5, 0x1

    .line 544
    .restart local v5    # "isOneNavEnabled":Z
    :goto_2
    if-eqz v5, :cond_7

    .line 545
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTsbForScreenPinning(Z)V

    .line 549
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 550
    const/4 v11, 0x1

    return v11

    .line 541
    .end local v5    # "isOneNavEnabled":Z
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "isOneNavEnabled":Z
    goto :goto_2

    .line 551
    .end local v5    # "isOneNavEnabled":Z
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v11

    const v12, 0x7f0a0224

    if-ne v11, v12, :cond_4

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressRecents()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    return v11

    .line 561
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "inLockTaskMode":Z
    .end local v10    # "touchExplorationEnabled":Z
    :catch_0
    move-exception v3

    .line 562
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "NavigationBar"

    const-string/jumbo v12, "Unable to reach activity manager"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_a
    const/4 v11, 0x0

    return v11
.end method

.method private onLongPressRecents()Z
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 568
    if-eqz v0, :cond_1

    .line 570
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/16 v1, 0x10f

    .line 574
    const/16 v2, 0x11e

    .line 573
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    move-result v0

    return v0
.end method

.method private onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method private onRecentsClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 483
    const/4 v1, 0x1

    .line 482
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->toggleRecentApps()V

    .line 487
    return-void
.end method

.method private onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 467
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 468
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->preloadRecentApps()V

    .line 477
    :cond_0
    :goto_0
    return v2

    .line 470
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_0

    .line 472
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_0
.end method

.method private onVerticalChanged(Z)V
    .locals 2
    .param p1, "isVertical"    # Z

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsScrimEnabled(Z)V

    .line 443
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 390
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 392
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    .line 393
    .local v3, "recentsButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 396
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 398
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    .line 399
    .local v1, "backButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 400
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 402
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    .line 403
    .local v2, "homeButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 404
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 406
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 407
    .local v0, "accessibilityButton":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 409
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 410
    return-void
.end method

.method private refreshLayout(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 369
    :cond_0
    return-void
.end method

.method public static removeNavigationBarFragmentView(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 774
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarFragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 775
    return-void

    .line 777
    :cond_0
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarFragmentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 778
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setNavBarFragmentViewVisiblity(Z)V

    .line 779
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 379
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 381
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 382
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 381
    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    return-void
.end method

.method public static setNavBarFragmentViewVisiblity(Z)V
    .locals 0
    .param p0, "vis"    # Z

    .prologue
    .line 786
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarFragmentViewVisiblity:Z

    .line 787
    return-void
.end method

.method public static setNavigationBarFragmentView(Landroid/view/View;)V
    .locals 1
    .param p0, "navigationBarView"    # Landroid/view/View;

    .prologue
    .line 742
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarFragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 743
    sput-object p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarFragmentView:Landroid/view/View;

    .line 745
    :cond_0
    return-void
.end method

.method private shouldDisableNavbarGestures()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 372
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 373
    goto :goto_0
.end method

.method private updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 11
    .param p1, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    const/4 v10, 0x1

    .line 589
    const/4 v3, 0x0

    .line 591
    .local v3, "requestingServices":I
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 592
    const-string/jumbo v8, "accessibility_display_magnification_navbar_enabled"

    .line 593
    const/4 v9, -0x2

    .line 591
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v10, :cond_0

    .line 594
    const/4 v3, 0x1

    .line 603
    :cond_0
    :goto_0
    const/4 v7, -0x1

    .line 602
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    .line 604
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 605
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 606
    .local v2, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v7, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_1

    .line 607
    add-int/lit8 v3, v3, 0x1

    .line 604
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 611
    .end local v2    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_2
    if-lt v3, v10, :cond_3

    const/4 v5, 0x1

    .line 612
    .local v5, "showAccessibilityButton":Z
    :goto_2
    const/4 v7, 0x2

    if-lt v3, v7, :cond_4

    const/4 v6, 0x1

    .line 613
    .local v6, "targetSelection":Z
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7, v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 615
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setAccessibilityButtonState(Z)V

    .line 617
    return-void

    .line 611
    .end local v5    # "showAccessibilityButton":Z
    .end local v6    # "targetSelection":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "showAccessibilityButton":Z
    goto :goto_2

    .line 612
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "targetSelection":Z
    goto :goto_3

    .line 596
    .end local v1    # "i":I
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v5    # "showAccessibilityButton":Z
    .end local v6    # "targetSelection":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-0(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-1(Z)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onVerticalChanged(Z)V

    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-10(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-3(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsClick(Landroid/view/View;)V

    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-5(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-6(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-8(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-9(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityClick(Landroid/view/View;)V

    return-void
.end method

.method public checkNavBarModes()V
    .locals 4

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 646
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    .line 645
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 647
    return-void
.end method

.method public disable(IIZ)V
    .locals 2
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 353
    const/high16 v1, 0x3600000

    and-int v0, p1, v1

    .line 357
    .local v0, "masked":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    if-eq v0, v1, :cond_0

    .line 358
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 361
    :cond_0
    return-void
.end method

.method public disableAnimationsDuringHide(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$11;-><init>(Ljava/lang/Object;)V

    .line 637
    const-wide/16 v2, 0x1c0

    add-long/2addr v2, p1

    .line 636
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 638
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 250
    const-string/jumbo v0, "  mNavigationBarWindowState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, "  mNavigationBarMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v0, "mNavigationBarView"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 257
    :cond_0
    const-string/jumbo v0, "  mNavigationBarView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    .line 259
    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finishBarAnimations()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 651
    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    return-object v0
.end method

.method public isSemiTransparent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 627
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NavigationBarFragment_26759()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 233
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 234
    .local v0, "ld":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    if-eq v0, v2, :cond_1

    .line 240
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    .line 241
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    .line 242
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->refreshLayout(I)V

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    .line 245
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/recents/Recents;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/Recents;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 147
    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 147
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 150
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 150
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 153
    const-string/jumbo v2, "accessibility_display_magnification_navbar_enabled"

    .line 152
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    const/4 v4, -0x1

    .line 152
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const-string/jumbo v1, "disabled_state"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    .line 159
    :cond_0
    const-class v1, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 162
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 162
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    const v0, 0x7f0d009d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 173
    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 173
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 177
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->destroy(Landroid/content/Context;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    return-void
.end method

.method onHomeLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->shouldDisableNavbarGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    return v0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->abortCurrentGesture()V

    .line 461
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 1
    .param p1, "keyguardOccluded"    # Z

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onKeyguardOccludedChanged(Z)V

    .line 632
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    const-string/jumbo v0, "disabled_state"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->saveState(Landroid/os/Bundle;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 193
    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$10;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    if-eqz p2, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->restoreState(Landroid/os/Bundle;)V

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 206
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 210
    .local v6, "pm":Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn(Z)V

    .line 211
    return-void
.end method

.method public setCurrentSysuiVisibility(I)V
    .locals 6
    .param p1, "systemUiVisibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 311
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 313
    const/high16 v3, 0x8000000

    const/high16 v4, -0x80000000

    .line 314
    const v5, 0x8000

    .line 312
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(IIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoHide()V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 318
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v4, 0x1

    .line 317
    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    .line 319
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 270
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 271
    .local v1, "imeShown":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 272
    .local v0, "hints":I
    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    if-eqz v1, :cond_2

    .line 273
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 277
    :goto_1
    if-eqz p4, :cond_3

    .line 278
    or-int/lit8 v0, v0, 0x2

    .line 282
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    if-ne v0, v2, :cond_4

    return-void

    .line 270
    .end local v0    # "hints":I
    .end local v1    # "imeShown":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "imeShown":Z
    goto :goto_0

    .line 275
    .restart local v0    # "hints":I
    :cond_2
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 280
    :cond_3
    and-int/lit8 v0, v0, -0x3

    goto :goto_2

    .line 284
    :cond_4
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_5

    .line 287
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 289
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    .line 290
    return-void
.end method

.method public setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 2
    .param p1, "lightBarController"    # Lcom/android/systemui/statusbar/phone/LightBarController;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    .line 624
    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 324
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 325
    .local v1, "oldVal":I
    not-int v0, p4

    and-int/2addr v0, v1

    and-int v3, p1, p4

    or-int v2, v0, v3

    .line 326
    .local v2, "newVal":I
    xor-int v6, v2, v1

    .line 327
    .local v6, "diff":I
    const/4 v8, 0x0

    .line 328
    .local v8, "nbModeChanged":Z
    if-eqz v6, :cond_1

    .line 329
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 333
    const/4 v7, -0x1

    .line 336
    .local v7, "nbMode":I
    :goto_0
    const/4 v0, -0x1

    if-eq v7, v0, :cond_3

    const/4 v8, 0x1

    .line 337
    :goto_1
    if-eqz v8, :cond_1

    .line 338
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-eq v0, v7, :cond_0

    .line 339
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->touchAutoHide()V

    .line 346
    .end local v7    # "nbMode":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 347
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 346
    invoke-virtual {v0, p1, p4, v8, v3}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    .line 348
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 334
    const/high16 v3, 0x8000000

    const/high16 v4, -0x80000000

    .line 335
    const v5, 0x8000

    .line 333
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->computeBarMode(IIIII)I

    move-result v7

    .restart local v7    # "nbMode":I
    goto :goto_0

    .line 336
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public setWindowState(II)V
    .locals 1
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 303
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-eq v0, p2, :cond_0

    .line 304
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    .line 307
    :cond_0
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 1
    .param p1, "showMenu"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 297
    :cond_0
    return-void
.end method
