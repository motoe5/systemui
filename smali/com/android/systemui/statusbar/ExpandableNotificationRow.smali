.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/ActivatableNotificationView;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TRANSLATE_CONTENT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAboveShelf:Z

.field private mAppName:Ljava/lang/String;

.field private mChildAfterViewWhenDismissed:Landroid/view/View;

.field private mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

.field private mChildrenContainerStub:Landroid/view/ViewStub;

.field private mChildrenExpanded:Z

.field private mContentTransformationAmount:F

.field private mDismissed:Z

.field private mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedWhenPinned:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mForceUnlocked:Z

.field private mGroupExpansionChanging:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGroupParentWhenDismissed:Landroid/view/View;

.field private mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mGutsStub:Landroid/view/ViewStub;

.field private mHasUserChangedExpansion:Z

.field private mHeadsUpHeight:I

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsupDisappearRunning:Z

.field private mHideSensitiveForIntrinsicHeight:Z

.field private mIconAnimationRunning:Z

.field private mIconTransformContentShift:I

.field private mIconTransformContentShiftNoIcon:I

.field private mIconsVisible:Z

.field private mIncreasedPaddingBetweenElements:I

.field private mIsColorized:Z

.field private mIsHeadsUp:Z

.field private mIsLastChild:Z

.field private mIsLowPriority:Z

.field private mIsPinned:Z

.field private mIsSummaryWithChildren:Z

.field private mIsSystemChildExpanded:Z

.field private mIsSystemExpanded:Z

.field private mJustClicked:Z

.field private mKeepInParent:Z

.field private mLastChronometerRunning:Z

.field private mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

.field private mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

.field private mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

.field private mLoggingKey:Ljava/lang/String;

.field private mLowPriorityStateUpdated:Z

.field private mMaxExpandHeight:I

.field private mMaxHeadsUpHeight:I

.field private mMaxHeadsUpHeightIncreased:I

.field private mMaxHeadsUpHeightLegacy:I

.field private mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

.field private mNotificationAmbientHeight:I

.field private mNotificationColor:I

.field private mNotificationColorAmbient:I

.field private final mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

.field private mNotificationMaxHeight:I

.field private mNotificationMinHeight:I

.field private mNotificationMinHeightLarge:I

.field private mNotificationMinHeightLegacy:I

.field private mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDismissRunnable:Ljava/lang/Runnable;

.field private mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

.field private mOnKeyguard:Z

.field private mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mRefocusOnDismiss:Z

.field private mRemoved:Z

.field private mSensitive:Z

.field private mSensitiveHiddenInGeneral:Z

.field private mShowAmbient:Z

.field private mShowNoBackground:Z

.field private mShowingPublic:Z

.field private mShowingPublicInitialized:Z

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTranslateAnim:Landroid/animation/Animator;

.field private mTranslateableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationWhenRemoved:F

.field private mUseIncreasedCollapsedHeight:Z

.field private mUseIncreasedHeadsUpHeight:Z

.field private mUserExpanded:Z

.field private mUserLocked:Z

.field private mWasChildInGroupWhenRemoved:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "-value"    # Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "-value"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "-value"    # Landroid/view/ViewStub;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "-value"    # Landroid/animation/Animator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "userAction"    # Z
    .param p2, "wasExpanded"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->DEBUG:Z

    .line 217
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;

    const-string/jumbo v1, "translate"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;-><init>(Ljava/lang/String;)V

    .line 216
    sput-object v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 1196
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 234
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    .line 1197
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 1198
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    .line 1199
    new-instance v0, Lcom/android/systemui/statusbar/NotificationMenuRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationMenuRow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 1200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->initDimens()V

    .line 1201
    return-void
.end method

.method private animateShowingPublic(JJ)V
    .locals 11
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 1760
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v6, :cond_0

    .line 1761
    const/4 v6, 0x1

    new-array v2, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    const/4 v7, 0x0

    aput-object v6, v2, v7

    .line 1763
    .local v2, "privateViews":[Landroid/view/View;
    :goto_0
    const/4 v6, 0x1

    new-array v3, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    .line 1764
    .local v3, "publicViews":[Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v6, :cond_1

    move-object v0, v2

    .line 1765
    .local v0, "hiddenChildren":[Landroid/view/View;
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v6, :cond_2

    move-object v5, v3

    .line 1766
    .local v5, "shownChildren":[Landroid/view/View;
    :goto_2
    const/4 v6, 0x0

    array-length v7, v0

    :goto_3
    if-ge v6, v7, :cond_3

    aget-object v1, v0, v6

    .line 1767
    .local v1, "hiddenView":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1768
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1769
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1770
    const/4 v9, 0x0

    .line 1769
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1773
    new-instance v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;

    invoke-direct {v9, p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 1769
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1766
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1762
    .end local v0    # "hiddenChildren":[Landroid/view/View;
    .end local v1    # "hiddenView":Landroid/view/View;
    .end local v2    # "privateViews":[Landroid/view/View;
    .end local v3    # "publicViews":[Landroid/view/View;
    .end local v5    # "shownChildren":[Landroid/view/View;
    :cond_0
    const/4 v6, 0x1

    new-array v2, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v7, 0x0

    aput-object v6, v2, v7

    .restart local v2    # "privateViews":[Landroid/view/View;
    goto :goto_0

    .line 1764
    .restart local v3    # "publicViews":[Landroid/view/View;
    :cond_1
    move-object v0, v3

    .restart local v0    # "hiddenChildren":[Landroid/view/View;
    goto :goto_1

    .line 1765
    :cond_2
    move-object v5, v2

    .restart local v5    # "shownChildren":[Landroid/view/View;
    goto :goto_2

    .line 1780
    :cond_3
    const/4 v6, 0x0

    array-length v7, v5

    :goto_4
    if-ge v6, v7, :cond_4

    aget-object v4, v5, v6

    .line 1781
    .local v4, "showView":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1782
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1783
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1784
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1785
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1784
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1780
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1789
    .end local v4    # "showView":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private getFontScaledHeight(I)I
    .locals 4
    .param p1, "dimenId"    # I

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1227
    .local v0, "dimensionPixelSize":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1228
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1227
    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1229
    .local v1, "factor":F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private getPinnedHeadsUpHeight(Z)I
    .locals 2
    .param p1, "atLeastMinHeight"    # Z

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 672
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 674
    :cond_1
    if-eqz p1, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 677
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    return v0
.end method

.method private initDimens()V
    .locals 2

    .prologue
    .line 1204
    const v0, 0x7f0701e2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLegacy:I

    .line 1205
    const v0, 0x7f0701e0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    .line 1207
    const v0, 0x7f0701e1

    .line 1206
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLarge:I

    .line 1208
    const v0, 0x7f0701dc

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMaxHeight:I

    .line 1209
    const v0, 0x7f0701cc

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationAmbientHeight:I

    .line 1211
    const v0, 0x7f0701db

    .line 1210
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightLegacy:I

    .line 1212
    const v0, 0x7f0701d9

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    .line 1214
    const v0, 0x7f0701da

    .line 1213
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    .line 1215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1216
    const v1, 0x7f0701d2

    .line 1215
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    .line 1217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1218
    const v1, 0x7f0701d5

    .line 1217
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShiftNoIcon:I

    .line 1219
    return-void
.end method

.method private isColorized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2077
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsColorized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBgTint:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isHeadsUpAllowed()Z
    .locals 1

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemChildExpanded()Z
    .locals 1

    .prologue
    .line 1642
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    return v0
.end method

.method private onChildrenCountChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1605
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-eqz v0, :cond_2

    .line 1606
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 1605
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 1607
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 1611
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1613
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    .line 1614
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 1615
    return-void

    :cond_1
    move v0, v1

    .line 1606
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1605
    goto :goto_0
.end method

.method private onExpansionChanged(ZZ)V
    .locals 3
    .param p1, "userAction"    # Z
    .param p2, "wasExpanded"    # Z

    .prologue
    .line 2092
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 2093
    .local v0, "nowExpanded":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 2094
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 2096
    :cond_1
    if-eq v0, p2, :cond_3

    .line 2097
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 2098
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    if-eqz v1, :cond_2

    .line 2099
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    .line 2101
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_3

    .line 2102
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onExpansionChanged()V

    .line 2105
    :cond_3
    return-void
.end method

.method private setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 711
    if-eqz p2, :cond_0

    .line 712
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    .line 713
    .end local p1    # "running":Z
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 714
    .local v0, "contractedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 715
    .local v1, "expandedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    .line 716
    .local v2, "headsUpChild":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 717
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 718
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    .line 720
    .end local v0    # "contractedChild":Landroid/view/View;
    .end local v1    # "expandedChild":Landroid/view/View;
    .end local v2    # "headsUpChild":Landroid/view/View;
    :cond_0
    return-void

    .line 712
    .restart local p1    # "running":Z
    :cond_1
    const/4 p1, 0x1

    .local p1, "running":Z
    goto :goto_0
.end method

.method private setChronometerRunningForChild(ZLandroid/view/View;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 723
    if-eqz p2, :cond_0

    .line 724
    const v1, 0x10201f9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 725
    .local v0, "chronometer":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    .line 726
    check-cast v0, Landroid/widget/Chronometer;

    .end local v0    # "chronometer":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/Chronometer;->setStarted(Z)V

    .line 729
    :cond_0
    return-void
.end method

.method private setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 292
    if-eqz p2, :cond_0

    .line 293
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "contractedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, "expandedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    .line 296
    .local v2, "headsUpChild":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 297
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 298
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 300
    .end local v0    # "contractedChild":Landroid/view/View;
    .end local v1    # "expandedChild":Landroid/view/View;
    .end local v2    # "headsUpChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setIconAnimationRunningForChild(ZLandroid/view/View;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 303
    if-eqz p2, :cond_0

    .line 304
    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 305
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 307
    const v2, 0x102039f

    .line 306
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 308
    .local v1, "rightIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 310
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "rightIcon":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setIconRunning(Landroid/widget/ImageView;Z)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "running"    # Z

    .prologue
    .line 313
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 315
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 316
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 317
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p2, :cond_1

    .line 318
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 331
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 320
    .restart local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 322
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    instance-of v3, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 323
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 324
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimatedVectorDrawable;
    if-eqz p2, :cond_3

    .line 325
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0
.end method

.method private updateChildrenVisibility()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1376
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setVisibility(I)V

    .line 1383
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimits()V

    .line 1384
    return-void

    :cond_1
    move v0, v2

    .line 1377
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1380
    goto :goto_1
.end method

.method private updateClickAndFocus()V
    .locals 3

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    .line 762
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_3

    move v0, v1

    .line 763
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isFocusable()Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 764
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFocusable(Z)V

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClickable()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 767
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClickable(Z)V

    .line 769
    :cond_1
    return-void

    .line 761
    :cond_2
    const/4 v1, 0x1

    .local v1, "normalChild":Z
    goto :goto_0

    .line 762
    .end local v1    # "normalChild":Z
    :cond_3
    const/4 v0, 0x0

    .local v0, "clickable":Z
    goto :goto_1
.end method

.method private updateContentShiftHeight()V
    .locals 4

    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    .line 1676
    .local v1, "notificationHeader":Landroid/view/NotificationHeaderView;
    if-eqz v1, :cond_0

    .line 1677
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    .line 1678
    .local v0, "icon":Lcom/android/internal/widget/CachingIconView;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShift:I

    .line 1682
    .end local v0    # "icon":Lcom/android/internal/widget/CachingIconView;
    :goto_0
    return-void

    .line 1680
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShiftNoIcon:I

    iput v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShift:I

    goto :goto_0
.end method

.method private updateContentTransformation()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1082
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconTransformContentShift:I

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 1083
    .local v2, "translationY":F
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLastChild:Z

    if-eqz v3, :cond_0

    .line 1084
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    sub-float v0, v5, v3

    .line 1085
    .local v0, "contentAlpha":F
    const/high16 v3, 0x3f000000    # 0.5f

    div-float v3, v0, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1086
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 1087
    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    .line 1091
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 1092
    .local v1, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 1093
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setTranslationY(F)V

    .line 1091
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1089
    .end local v0    # "contentAlpha":F
    .end local v1    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "contentAlpha":F
    goto :goto_0

    .line 1095
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v3, :cond_2

    .line 1096
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    .line 1097
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setTranslationY(F)V

    .line 1100
    :cond_2
    return-void
.end method

.method private updateIconVisibilities()V
    .locals 5

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBelowSpeedBump()Z

    move-result v2

    .line 1105
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    .line 1106
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 1107
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setIconsVisible(Z)V

    .line 1106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1103
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    const/4 v1, 0x1

    .local v1, "visible":Z
    goto :goto_0

    .line 1109
    .end local v1    # "visible":Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_2

    .line 1110
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setIconsVisible(Z)V

    .line 1112
    :cond_2
    return-void
.end method

.method private updateLimits()V
    .locals 4

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 396
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    return-void
.end method

.method private updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 8
    .param p1, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    const v7, 0x102040c

    .line 401
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_0

    const/4 v1, 0x1

    .line 403
    .local v1, "customView":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_1

    const/4 v0, 0x1

    .line 405
    .local v0, "beforeN":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 406
    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLegacy:I

    .line 412
    .local v4, "minHeight":I
    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 413
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_4

    const/4 v2, 0x1

    .line 416
    .local v2, "headsUpCustom":Z
    :goto_3
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 417
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightLegacy:I

    .line 423
    .local v3, "headsUpheight":I
    :goto_4
    iget v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMaxHeight:I

    .line 424
    iget v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationAmbientHeight:I

    .line 423
    invoke-virtual {p1, v4, v3, v5, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeights(IIII)V

    .line 425
    return-void

    .line 401
    .end local v0    # "beforeN":Z
    .end local v1    # "customView":Z
    .end local v2    # "headsUpCustom":Z
    .end local v3    # "headsUpheight":I
    .end local v4    # "minHeight":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "customView":Z
    goto :goto_0

    .line 403
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "beforeN":Z
    goto :goto_1

    .line 407
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-ne p1, v5, :cond_3

    .line 408
    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLarge:I

    .restart local v4    # "minHeight":I
    goto :goto_2

    .line 410
    .end local v4    # "minHeight":I
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    .restart local v4    # "minHeight":I
    goto :goto_2

    .line 413
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "headsUpCustom":Z
    goto :goto_3

    .line 412
    .end local v2    # "headsUpCustom":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "headsUpCustom":Z
    goto :goto_3

    .line 418
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-ne p1, v5, :cond_7

    .line 419
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightIncreased:I

    .restart local v3    # "headsUpheight":I
    goto :goto_4

    .line 421
    .end local v3    # "headsUpheight":I
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    .restart local v3    # "headsUpheight":I
    goto :goto_4
.end method

.method private updateMaxHeights()V
    .locals 4

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    .line 1686
    .local v2, "intrinsicBefore":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    .line 1687
    .local v0, "expandedChild":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1688
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 1690
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    .line 1691
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    .line 1692
    .local v1, "headsUpChild":Landroid/view/View;
    if-nez v1, :cond_1

    .line 1693
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    .line 1695
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    .line 1696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1697
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 1699
    :cond_2
    return-void
.end method

.method private updateNotificationColor()V
    .locals 3

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    .line 901
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->color:I

    .line 902
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v2

    .line 900
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColor:I

    .line 903
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    .line 904
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->color:I

    .line 903
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveAmbientColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColorAmbient:I

    .line 905
    return-void
.end method


# virtual methods
.method public addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "childIndex"    # I

    .prologue
    .line 482
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-nez v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 487
    .local v1, "viewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 488
    sget-boolean v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ExpandableNotificationRow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing notification from parent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Parent\'s class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 489
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 488
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    .line 490
    check-cast v0, Landroid/view/ViewGroup;

    .line 491
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 494
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 496
    const/4 v2, 0x1

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 497
    return-void
.end method

.method public animateTranslateNotification(F)V
    .locals 2
    .param p1, "leftTarget"    # F

    .prologue
    const/4 v1, 0x0

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1302
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1306
    :cond_1
    return-void
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .locals 1
    .param p2, "visualStabilityManager"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .param p3, "callback"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "childOrder":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 606
    :cond_0
    return-void
.end method

.method public areChildrenExpanded()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    return v0
.end method

.method public areGutsExposed()Z
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canViewBeDismissed()Z
    .locals 1

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeRemoteInput()V
    .locals 4

    .prologue
    .line 883
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 884
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->closeRemoteInput()V

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    return-void
.end method

.method public createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 823
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;)V

    .line 825
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 826
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 828
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 830
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v1
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 2
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 2163
    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;)V

    return-object v0
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2082
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2083
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2084
    .local v2, "y":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 2085
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 2086
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v3

    sub-float v3, v1, v3

    invoke-virtual {v0, v3, v2}, Landroid/view/NotificationHeaderView;->isInTouchRect(FF)Z

    move-result v3

    return v3

    .line 2088
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public getAmbientSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientSingleLineChild()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getChildAfterViewWhenDismissed()Landroid/view/View;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    return-object v0
.end method

.method public getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0
.end method

.method public getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 2
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 596
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 598
    .local v0, "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 600
    .end local v0    # "parentState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_0
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 1943
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v0

    return v0

    .line 1946
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v0

    return v0
.end method

.method public getContentTranslation()F
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getTranslationY()F

    move-result v0

    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1857
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0

    .line 1860
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getExtraBottomPadding()I
    .locals 1

    .prologue
    .line 1882
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1883
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    return v0

    .line 1885
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupParentWhenDismissed()Landroid/view/View;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    return-object v0
.end method

.method public getGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .prologue
    .line 2064
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    .line 2065
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2067
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2068
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIncreasedPaddingAmount()F

    move-result v0

    return v0

    .line 2070
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2071
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 2073
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 1569
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    return v0

    .line 1572
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 1574
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1575
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    return v0

    .line 1576
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    if-eqz v0, :cond_3

    .line 1577
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v0

    return v0

    .line 1578
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    if-eqz v0, :cond_5

    .line 1579
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 1580
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAllowed()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v0, :cond_a

    .line 1581
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v0, :cond_8

    .line 1582
    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v0

    return v0

    .line 1583
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1584
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1586
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1588
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1589
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    return v0

    .line 1591
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public getMaxContentHeight()I
    .locals 2

    .prologue
    .line 1919
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1920
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v1

    return v1

    .line 1922
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 1923
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    return v1
.end method

.method public getMaxExpandHeight()I
    .locals 1

    .prologue
    .line 1839
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 1928
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1929
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 1930
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isTrackingHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1931
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v1

    return v1

    .line 1932
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1933
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight()I

    move-result v1

    return v1

    .line 1934
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAllowed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v1, :cond_3

    .line 1935
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    return v1

    .line 1937
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 1938
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v1

    return v1
.end method

.method public getNotificationChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 570
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationColor()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColor:I

    return v0
.end method

.method public getNotificationColorAmbient()I
    .locals 1

    .prologue
    .line 1188
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColorAmbient:I

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationIcon()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1029
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1030
    .local v0, "notificationHeader":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    return-object v1

    .line 1033
    :cond_0
    return-object v1
.end method

.method public getNotificationInflater()Lcom/android/systemui/statusbar/notification/NotificationInflater;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    return-object v0
.end method

.method public getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v0

    return v0
.end method

.method public getPositionOfChild(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I
    .locals 1
    .param p1, "childRow"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 2043
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    return v0

    .line 2046
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method public getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    return-object v0
.end method

.method public getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method public getRelativeTopPadding(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1123
    const/4 v0, 0x0

    .line 1124
    .local v0, "topPadding":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1125
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1126
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "view":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 1127
    .restart local p1    # "view":Landroid/view/View;
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 1128
    return v0

    .line 1131
    :cond_1
    return v0
.end method

.method public getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .prologue
    .line 1983
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 4
    .param p1, "leftTarget"    # F
    .param p2, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v2, 0x0

    .line 1337
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 1338
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1340
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1342
    return-object v2

    .line 1344
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 1345
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 1344
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1346
    .local v0, "translateAnim":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_2

    .line 1347
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1349
    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1365
    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 1366
    return-object v0
.end method

.method public getTranslation()F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1328
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0

    .line 1332
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationWhenRemoved()F
    .locals 1

    .prologue
    .line 990
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    return v0
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 621
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 622
    :cond_0
    return-object p0

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 625
    .local v0, "view":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v0, :cond_2

    .end local p0    # "this":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0
.end method

.method protected handleSlideBack()Z
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    .line 549
    const/4 v0, 0x1

    return v0

    .line 551
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLowPriorityStateUpdated()Z
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLowPriorityStateUpdated:Z

    return v0
.end method

.method public hasUserChangedExpansion()Z
    .locals 1

    .prologue
    .line 1439
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    return v0
.end method

.method public inflateGuts()V
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-nez v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1373
    :cond_0
    return-void
.end method

.method public isAboveShelf()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2169
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelf:Z

    .line 2168
    :cond_0
    :goto_0
    return v0

    .line 2169
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChildInGroup()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClearable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1551
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 1552
    :cond_0
    return v4

    .line 1554
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_3

    .line 1556
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 1557
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1558
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1559
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1560
    return v4

    .line 1557
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1564
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public isContentExpandable()Z
    .locals 2

    .prologue
    .line 1848
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1849
    const/4 v1, 0x1

    return v1

    .line 1851
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 1852
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isContentExpandable()Z

    move-result v1

    return v1
.end method

.method public isDimmable()Z
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isDimmable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    const/4 v0, 0x0

    return v0

    .line 391
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isDimmable()Z

    move-result v0

    return v0
.end method

.method public isDismissed()Z
    .locals 1

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissed:Z

    return v0
.end method

.method public isExpandable()Z
    .locals 1

    .prologue
    .line 1418
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1419
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1421
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 1632
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    return v0
.end method

.method public isExpanded(Z)Z
    .locals 1
    .param p1, "allowOnKeyguard"    # Z

    .prologue
    .line 1636
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    .line 1637
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemChildExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1638
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    .line 1636
    :goto_0
    return v0

    .line 1637
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1636
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupExpanded()Z
    .locals 2

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public isGroupExpansionChanging()Z
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    return v0

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return v0
.end method

.method public isHeadsUp()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    return v0
.end method

.method public isHeadsUpAnimatingAway()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    return v0
.end method

.method public isLowPriority()Z
    .locals 1

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    return v0
.end method

.method public isOnKeyguard()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRemoved:Z

    return v0
.end method

.method public isShowingAmbient()Z
    .locals 1

    .prologue
    .line 2183
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    return v0
.end method

.method public isShowingIcon()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1040
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    return v0

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSummaryWithChildren()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    return v0
.end method

.method public isSystemExpanded()Z
    .locals 1

    .prologue
    .line 1508
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    .prologue
    .line 1443
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    .prologue
    .line 1488
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mForceUnlocked:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepInParent()Z
    .locals 1

    .prologue
    .line 964
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKeepInParent:Z

    return v0
.end method

.method public makeActionsVisibile()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1806
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 1807
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    .line 1810
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 1811
    return-void
.end method

.method public mustStayOnScreen()Z
    .locals 1

    .prologue
    .line 1793
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    return v0
.end method

.method public notifyHeightChanged(Z)V
    .locals 2
    .param p1, "needsAnimation"    # Z

    .prologue
    .line 1703
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->notifyHeightChanged(Z)V

    .line 1704
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->requestSelectLayout(Z)V

    .line 1705
    return-void

    .line 1704
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 7
    .param p1, "wasAppearing"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1865
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    .line 1866
    if-eqz p1, :cond_1

    .line 1869
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v1, :cond_0

    .line 1870
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    .line 1871
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1873
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 1874
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 1875
    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1873
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1878
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 784
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onAttachedToWindow()V

    .line 785
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    .line 786
    const-class v1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    const/4 v2, 0x0

    .line 785
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 787
    return-void
.end method

.method protected onBelowSpeedBumpChanged()V
    .locals 0

    .prologue
    .line 1077
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 1078
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onConfigurationChanged()V

    .line 873
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 838
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->initDimens()V

    .line 841
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v5, :cond_0

    .line 842
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v8, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5, v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V

    .line 844
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v5, :cond_1

    .line 845
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 846
    .local v3, "oldGuts":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 847
    .local v0, "index":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    .line 848
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 849
    const v7, 0x7f0d00a6

    .line 848
    invoke-virtual {v5, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 850
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 851
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;I)V

    .line 853
    .end local v0    # "index":I
    .end local v3    # "oldGuts":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v4

    .line 854
    .local v4, "oldMenu":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 855
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 856
    .local v2, "menuIndex":I
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    .line 857
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v5, p0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->createMenu(Landroid/view/ViewGroup;)V

    .line 858
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 859
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;I)V

    .line 861
    .end local v2    # "menuIndex":I
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_3

    aget-object v1, v7, v5

    .line 862
    .local v1, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->reInflateViews()V

    .line 861
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 864
    .end local v1    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->onDensityOrFontScaleChanged()V

    .line 865
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated()V

    .line 866
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 791
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onDetachedFromWindow()V

    .line 792
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 793
    return-void
.end method

.method public onExpandedByGesture(Z)V
    .locals 3
    .param p1, "userExpanded"    # Z

    .prologue
    .line 2055
    const/16 v0, 0x199

    .line 2056
    .local v0, "event":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2057
    const/16 v0, 0x19a

    .line 2059
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 2060
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1243
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 1244
    const v2, 0x7f0a00da

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1245
    const v2, 0x7f0a00d9

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1246
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1248
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 1249
    .local v1, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1252
    .end local v1    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    const v2, 0x7f0a01e2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    .line 1253
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    new-instance v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 1262
    const v2, 0x7f0a007e

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    .line 1263
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    new-instance v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 1276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    .line 1277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1278
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1281
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1282
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1283
    return-void
.end method

.method public onFinishedExpansionChange()V
    .locals 1

    .prologue
    .line 2010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 2011
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2012
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2109
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2111
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2113
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 2114
    .local v0, "expandable":Z
    const/4 v1, 0x0

    .line 2115
    .local v1, "isExpanded":Z
    if-nez v0, :cond_2

    .line 2116
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_4

    .line 2117
    const/4 v0, 0x1

    .line 2118
    .local v0, "expandable":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2119
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    .line 2126
    .end local v0    # "expandable":Z
    .end local v1    # "isExpanded":Z
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2127
    if-eqz v1, :cond_5

    .line 2128
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2133
    :cond_3
    :goto_1
    return-void

    .line 2122
    .local v0, "expandable":Z
    .restart local v1    # "isExpanded":Z
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->isContentExpandable()Z

    move-result v0

    .line 2123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    .local v1, "isExpanded":Z
    goto :goto_0

    .line 2130
    .end local v0    # "expandable":Z
    .end local v1    # "isExpanded":Z
    :cond_5
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1659
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 1660
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateMaxHeights()V

    .line 1661
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onHeightUpdate()V

    .line 1664
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateContentShiftHeight()V

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    if-eqz v0, :cond_1

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;->onLayout()V

    .line 1668
    :cond_1
    return-void
.end method

.method public onNotificationUpdated()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 340
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 341
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isColorized()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsColorized:Z

    .line 344
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotificationColor()V

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onNotificationUpdated()V

    .line 349
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onNotificationUpdated()V

    .line 353
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconAnimationRunning:Z

    if-eqz v1, :cond_3

    .line 354
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 356
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_4

    .line 357
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    .line 359
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimits()V

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 365
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 795
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;Landroid/content/Context;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 797
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 798
    .local v0, "existed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 799
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    .line 801
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 802
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->useDefaultMenuItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createInfoItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->createSnoozeItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setMenuItems(Ljava/util/ArrayList;)V

    .line 808
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 809
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 811
    :cond_2
    return-void

    .line 797
    .end local v0    # "existed":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "existed":Z
    goto :goto_0
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .prologue
    .line 813
    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 816
    .local v0, "existed":Z
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/NotificationMenuRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 817
    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 820
    :cond_0
    return-void

    .line 815
    .end local v0    # "existed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "existed":Z
    goto :goto_0
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1388
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1391
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1392
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1393
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1394
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1395
    const/4 v1, 0x1

    return v1

    .line 1397
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 537
    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    .line 537
    if-eqz v0, :cond_1

    .line 539
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 541
    :cond_1
    return v1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 2137
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    return v1

    .line 2140
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2150
    const/4 v0, 0x0

    return v0

    .line 2142
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V

    .line 2144
    return v1

    .line 2147
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2148
    return v1

    .line 2140
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_0
    .end sparse-switch
.end method

.method public performDismiss()V
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1022
    :cond_0
    return-void
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 612
    :cond_0
    return-void
.end method

.method public removeAllChildren()V
    .locals 6

    .prologue
    .line 921
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 922
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 923
    .local v0, "clonedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 924
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 925
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 923
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 928
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 929
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_1

    .line 931
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 932
    return-void
.end method

.method public removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    .line 504
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 505
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 1654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    .line 1655
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 1237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onHeightReset()V

    .line 1238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->requestLayout()V

    .line 1239
    return-void
.end method

.method public resetTranslation()V
    .locals 3

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 1287
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1289
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1291
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1294
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidateOutline()V

    .line 1295
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 1296
    return-void
.end method

.method public resetUserExpansion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 1479
    .local v0, "changed":Z
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 1480
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 1481
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onExpansionChanged()V

    .line 1484
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 1485
    return-void
.end method

.method public setAboveShelf(Z)V
    .locals 0
    .param p1, "aboveShelf"    # Z

    .prologue
    .line 2187
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAboveShelf:Z

    .line 2188
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 7
    .param p1, "height"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 1890
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    if-eq p1, v4, :cond_1

    const/4 v0, 0x1

    .line 1891
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setActualHeight(IZ)V

    .line 1892
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1896
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1897
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 1898
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 1901
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1902
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 1903
    return-void

    .line 1890
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 1905
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1906
    .local v1, "contentHeight":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v5, v4

    .line 1907
    .local v2, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeight(I)V

    .line 1906
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1909
    .end local v2    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_4

    .line 1910
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setActualHeight(I)V

    .line 1912
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v4, :cond_5

    .line 1913
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 1915
    :cond_5
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeightAnimating(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->setAppName(Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method protected setChildrenContainer(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V
    .locals 0
    .param p1, "childrenContainer"    # Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .prologue
    .line 2231
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 2232
    return-void
.end method

.method public setChildrenExpanded(ZZ)V
    .locals 1
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1814
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setChildrenExpanded(Z)V

    .line 1818
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 1819
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 1820
    return-void
.end method

.method public setChronometerRunning(Z)V
    .locals 4
    .param p1, "running"    # Z

    .prologue
    .line 697
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    .line 698
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 699
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 700
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v3, :cond_0

    .line 702
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 703
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 704
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 705
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 4
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 1962
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mClipBottomAmount:I

    if-eq p1, v1, :cond_1

    .line 1963
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipBottomAmount(I)V

    .line 1964
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1965
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBottomAmount(I)V

    .line 1964
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1967
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_1

    .line 1968
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipBottomAmount(I)V

    .line 1971
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v1, :cond_2

    .line 1974
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setClipBottomAmount(I)V

    .line 1976
    :cond_2
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 2
    .param p1, "clipToActualHeight"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1431
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    :goto_0
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToActualHeight(Z)V

    .line 1432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipToActualHeight(Z)V

    .line 1433
    return-void

    :cond_1
    move v0, v1

    .line 1431
    goto :goto_0
.end method

.method public setClipTopAmount(I)V
    .locals 4
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 1951
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 1952
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1953
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    .line 1952
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1955
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_1

    .line 1956
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipTopAmount(I)V

    .line 1958
    :cond_1
    return-void
.end method

.method public setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 1
    .param p1, "customBackgroundColor"    # I
    .param p2, "animate"    # Z
    .param p3, "notificationContentView"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-ne v0, p3, :cond_0

    .line 878
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(IZ)V

    .line 880
    :cond_0
    return-void
.end method

.method public setContentTransformationAmount(FZ)V
    .locals 2
    .param p1, "contentTransformationAmount"    # F
    .param p2, "isLastChild"    # Z

    .prologue
    .line 1056
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLastChild:Z

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 1057
    .local v0, "changeTransformation":Z
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v0, v1

    .line 1058
    .local v0, "changeTransformation":Z
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLastChild:Z

    .line 1059
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContentTransformationAmount:F

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateContentTransformation()V

    .line 1063
    :cond_0
    return-void

    .line 1056
    .end local v0    # "changeTransformation":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "changeTransformation":Z
    goto :goto_0

    .line 1057
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 1402
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 1403
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v1, :cond_0

    .line 1405
    const/4 p2, 0x0

    .line 1407
    .end local p2    # "fade":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 1408
    .local v0, "showing":Lcom/android/systemui/statusbar/NotificationContentView;
    if-eqz v0, :cond_1

    .line 1409
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 1411
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_2

    .line 1412
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setDark(ZZJ)V

    .line 1414
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 1415
    return-void
.end method

.method public setDismissed(ZZ)V
    .locals 3
    .param p1, "dismissed"    # Z
    .param p2, "fromAccessibility"    # Z

    .prologue
    .line 945
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissed:Z

    .line 946
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    .line 947
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRefocusOnDismiss:Z

    .line 948
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 949
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 951
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    .line 952
    .local v1, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 953
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 954
    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    .line 957
    .end local v0    # "i":I
    .end local v1    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return-void
.end method

.method public setExpandable(Z)V
    .locals 2
    .param p1, "expandable"    # Z

    .prologue
    .line 1425
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1427
    return-void
.end method

.method public setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    .line 2051
    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    .line 2052
    return-void
.end method

.method public setGroupExpansionChanging(Z)V
    .locals 0
    .param p1, "changing"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    .line 257
    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1
    .param p1, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 458
    return-void
.end method

.method public setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_0

    .line 777
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 778
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setGutsContent(Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;)V

    .line 780
    :cond_0
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2
    .param p1, "isHeadsUp"    # Z

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 441
    .local v0, "intrinsicBefore":I
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 442
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUp(Z)V

    .line 443
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 448
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 450
    :cond_1
    if-eqz p1, :cond_2

    .line 451
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 453
    :cond_2
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1
    .param p1, "headsUpAnimatingAway"    # Z

    .prologue
    .line 998
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    .line 999
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpAnimatingAway(Z)V

    .line 1000
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 773
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 7
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1728
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 1729
    .local v0, "oldShowingPublic":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v3, :cond_0

    .end local p1    # "hideSensitive":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 1730
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-ne v3, v0, :cond_1

    .line 1731
    return-void

    .restart local p1    # "hideSensitive":Z
    :cond_0
    move p1, v2

    .line 1729
    goto :goto_0

    .line 1735
    .end local p1    # "hideSensitive":Z
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 1737
    :cond_2
    if-nez p2, :cond_5

    .line 1738
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1739
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1740
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v3, :cond_3

    .line 1741
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1742
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    .line 1744
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 1745
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 1746
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v3, :cond_4

    move v3, v2

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 1747
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility()V

    .line 1751
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    .line 1752
    .local v1, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    .line 1753
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    .line 1754
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateShelfIconColor()V

    .line 1755
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 1756
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 1757
    return-void

    .line 1746
    .end local v1    # "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_4
    const/4 v3, 0x4

    goto :goto_1

    .line 1749
    :cond_5
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateShowingPublic(JJ)V

    goto :goto_2
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 4
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 1714
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    .line 1715
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    .line 1717
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 1718
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1719
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1720
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 1718
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1723
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return-void
.end method

.method public setIconAnimationRunning(Z)V
    .locals 7
    .param p1, "running"    # Z

    .prologue
    .line 275
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 276
    .local v2, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 275
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    .end local v2    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v4, :cond_1

    .line 279
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 280
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 282
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    .line 283
    .local v3, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 284
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 285
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v3    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconAnimationRunning:Z

    .line 289
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 1
    .param p1, "iconsVisible"    # Z

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    if-eq p1, v0, :cond_0

    .line 1070
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconsVisible:Z

    .line 1071
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 1073
    :cond_0
    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    .line 1176
    return-void
.end method

.method public setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "isChildInGroup"    # Z
    .param p2, "parent"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v1, 0x0

    .line 521
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-eqz v2, :cond_1

    move v0, p1

    .line 522
    :goto_0
    if-eqz v0, :cond_2

    .end local p2    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setIsChildInGroup(Z)V

    .line 524
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setIsChildInGroup(Z)V

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    .line 526
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 528
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    .line 530
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 532
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateIconVisibilities()V

    .line 533
    return-void

    .line 521
    .restart local p2    # "parent":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    const/4 v0, 0x0

    .local v0, "childInGroup":Z
    goto :goto_0

    .end local v0    # "childInGroup":Z
    :cond_2
    move-object p2, v1

    .line 522
    goto :goto_1
.end method

.method public setIsLowPriority(Z)V
    .locals 2
    .param p1, "isLowPriority"    # Z

    .prologue
    .line 1139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setIsLowPriority(Z)V

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setIsLowPriority(Z)V

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setIsLowPriority(Z)V

    .line 1145
    :cond_0
    return-void
.end method

.method public setJustClicked(Z)V
    .locals 0
    .param p1, "justClicked"    # Z

    .prologue
    .line 686
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mJustClicked:Z

    .line 687
    return-void
.end method

.method public setKeepInParent(Z)V
    .locals 0
    .param p1, "keepInParent"    # Z

    .prologue
    .line 968
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKeepInParent:Z

    .line 969
    return-void
.end method

.method public setLayoutListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayoutListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$LayoutListener;

    .line 1651
    return-void
.end method

.method public setLegacy(Z)V
    .locals 4
    .param p1, "legacy"    # Z

    .prologue
    .line 1987
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1988
    .local v0, "l":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setLegacy(Z)V

    .line 1987
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1990
    .end local v0    # "l":Lcom/android/systemui/statusbar/NotificationContentView;
    :cond_0
    return-void
.end method

.method public setLowPriorityStateUpdated(Z)V
    .locals 0
    .param p1, "lowPriorityStateUpdated"    # Z

    .prologue
    .line 1149
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLowPriorityStateUpdated:Z

    .line 1150
    return-void
.end method

.method public setNeedsRedaction(Z)V
    .locals 1
    .param p1, "needsRedaction"    # Z

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setRedactAmbient(Z)V

    .line 1180
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 755
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    .line 758
    return-void
.end method

.method public setOnDismissRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onDismissRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnDismissRunnable:Ljava/lang/Runnable;

    .line 1026
    return-void
.end method

.method public setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V
    .locals 0
    .param p1, "onExpandClickListener"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    .line 751
    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 3
    .param p1, "onKeyguard"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1532
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eq p1, v1, :cond_1

    .line 1533
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 1534
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    .line 1535
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 1536
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1537
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 1538
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 1540
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 1543
    .end local v0    # "wasExpanded":Z
    :cond_1
    return-void
.end method

.method public setPinned(Z)V
    .locals 4
    .param p1, "pinned"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 641
    .local v0, "intrinsicHeight":I
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    .line 642
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 643
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 645
    :cond_0
    if-eqz p1, :cond_2

    .line 646
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 647
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    .line 651
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    .line 652
    return-void

    .line 648
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v1, :cond_1

    .line 649
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    goto :goto_0
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 1
    .param p1, "r"    # Lcom/android/systemui/statusbar/RemoteInputController;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    .line 462
    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "remoteViewClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1172
    return-void
.end method

.method public setRemoved()V
    .locals 2

    .prologue
    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRemoved:Z

    .line 977
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 978
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasChildInGroupWhenRemoved:Z

    .line 979
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslationWhenRemoved:F

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setRemoved()V

    .line 983
    return-void
.end method

.method public setSensitive(ZZ)V
    .locals 0
    .param p1, "sensitive"    # Z
    .param p2, "hideSensitive"    # Z

    .prologue
    .line 1708
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    .line 1709
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    .line 1710
    return-void
.end method

.method public setShowAmbient(Z)V
    .locals 1
    .param p1, "showAmbient"    # Z

    .prologue
    .line 2173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    if-eq p1, v0, :cond_1

    .line 2174
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowAmbient:Z

    .line 2175
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->notifyShowAmbientChanged()V

    .line 2178
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 2180
    :cond_1
    return-void
.end method

.method public setSingleLineWidthIndention(I)V
    .locals 1
    .param p1, "indention"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setSingleLineWidthIndention(I)V

    .line 893
    return-void
.end method

.method public setSystemChildExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 1646
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    .line 1647
    return-void
.end method

.method public setSystemExpanded(Z)V
    .locals 3
    .param p1, "expand"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1517
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    if-eq p1, v1, :cond_0

    .line 1518
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 1519
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 1520
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 1521
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 1522
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 1526
    .end local v0    # "wasExpanded":Z
    :cond_0
    return-void
.end method

.method public setTranslation(F)V
    .locals 2
    .param p1, "translationX"    # F

    .prologue
    .line 1310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1312
    return-void

    .line 1315
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1316
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1317
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1315
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidateOutline()V

    .line 1321
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getMenuView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1322
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onTranslationUpdate(F)V

    .line 1324
    :cond_3
    return-void
.end method

.method public setUseIncreasedCollapsedHeight(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 1161
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedCollapsedHeight:Z

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setUsesIncreasedHeight(Z)V

    .line 1163
    return-void
.end method

.method public setUseIncreasedHeadsUpHeight(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 1166
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUseIncreasedHeadsUpHeight:Z

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->setUsesIncreasedHeadsUpHeight(Z)V

    .line 1168
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 1
    .param p1, "userExpanded"    # Z

    .prologue
    .line 1452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    .line 1453
    return-void
.end method

.method public setUserExpanded(ZZ)V
    .locals 4
    .param p1, "userExpanded"    # Z
    .param p2, "allowChildExpansion"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1462
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->setNotificationExpanded()V

    .line 1463
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1463
    if-eqz v1, :cond_0

    .line 1465
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 1466
    .local v0, "wasExpanded":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    .line 1467
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 1468
    return-void

    .line 1470
    .end local v0    # "wasExpanded":Z
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    return-void

    .line 1471
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 1472
    .restart local v0    # "wasExpanded":Z
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 1473
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 1474
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onExpansionChanged(ZZ)V

    .line 1475
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 1
    .param p1, "userLocked"    # Z

    .prologue
    .line 1492
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setUserExpanding(Z)V

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 1498
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1499
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 1502
    :cond_1
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .prologue
    .line 556
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldRefocusOnDismiss()Z
    .locals 1

    .prologue
    .line 2154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRefocusOnDismiss:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAccessibilityFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startChildAnimation(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 1
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 618
    :cond_0
    return-void
.end method

.method public updateBackgroundForGroupState()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2018
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_1

    .line 2020
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2021
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderForExpansion(Z)V

    .line 2022
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    .line 2023
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 2024
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 2023
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2026
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2027
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColorForExpansionState()I

    move-result v0

    .line 2030
    .local v0, "childColor":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2031
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2032
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v4

    .line 2031
    if-eqz v4, :cond_6

    .line 2032
    :cond_2
    if-eqz v0, :cond_5

    const/4 v3, 0x1

    .line 2033
    .local v3, "showBackground":Z
    :goto_1
    xor-int/lit8 v4, v3, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    .line 2038
    .end local v0    # "childColor":I
    .end local v3    # "showBackground":Z
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateOutline()V

    .line 2039
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground()V

    .line 2040
    return-void

    .line 2030
    .restart local v0    # "childColor":I
    :cond_4
    const/4 v3, 0x1

    .restart local v3    # "showBackground":Z
    goto :goto_1

    .line 2032
    .end local v3    # "showBackground":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "showBackground":Z
    goto :goto_1

    .line 2031
    .end local v3    # "showBackground":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "showBackground":Z
    goto :goto_1

    .line 2036
    .end local v0    # "childColor":I
    .end local v3    # "showBackground":Z
    :cond_7
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    goto :goto_2
.end method

.method protected updateBackgroundTint()V
    .locals 4

    .prologue
    .line 1994
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 1995
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 1996
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    .line 1998
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    .line 1999
    .local v2, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2000
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2001
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    .line 1999
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2004
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "i":I
    .end local v2    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_0
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    .prologue
    .line 1618
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    .line 1621
    :cond_0
    return-void
.end method

.method public updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 335
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationInflater:Lcom/android/systemui/statusbar/notification/NotificationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews()V

    .line 337
    return-void
.end method

.method updateShelfIconColor()V
    .locals 9

    .prologue
    .line 369
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 370
    .local v2, "expandedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v6, 0x7f0a0118

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 371
    .local v4, "isPreL":Z
    if-eqz v4, :cond_1

    .line 372
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v5

    .line 371
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v1

    .line 373
    :goto_0
    const/4 v0, 0x0

    .line 374
    .local v0, "color":I
    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v3

    .line 376
    .local v3, "header":Landroid/view/NotificationHeaderView;
    if-eqz v3, :cond_2

    .line 377
    invoke-virtual {v3}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v0

    .line 383
    .end local v3    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 384
    return-void

    .line 371
    .end local v0    # "color":I
    :cond_1
    const/4 v1, 0x1

    .local v1, "colorize":Z
    goto :goto_0

    .line 379
    .end local v1    # "colorize":Z
    .restart local v0    # "color":I
    .restart local v3    # "header":Landroid/view/NotificationHeaderView;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsLowPriority:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 380
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v8

    .line 379
    invoke-virtual {v6, v7, v5, v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContrastedColor(Landroid/content/Context;ZI)I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public wasChildInGroupWhenRemoved()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasChildInGroupWhenRemoved:Z

    return v0
.end method

.method public wasJustClicked()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mJustClicked:Z

    return v0
.end method
