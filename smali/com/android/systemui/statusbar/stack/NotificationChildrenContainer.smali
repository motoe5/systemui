.class public Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "NotificationChildrenContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;
    }
.end annotation


# static fields
.field private static final ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mActualHeight:I

.field private mChildPadding:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenExpanded:Z

.field private mClipBottomAmount:I

.field private mCollapsedBottompadding:F

.field private mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mCurrentHeader:Landroid/view/ViewGroup;

.field private mDividerHeight:I

.field private final mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private mHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderHeight:I

.field private mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

.field private mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mIsLowPriority:Z

.field private mMaxNotificationHeight:I

.field private mNeverAppliedGroupState:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderAmbient:Landroid/view/ViewGroup;

.field private mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderMargin:I

.field private mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificatonTopPadding:I

.field private mOverflowNumber:Landroid/widget/TextView;

.field private mRealHeight:I

.field private mUserLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;-><init>()V

    .line 62
    const-wide/16 v2, 0xc8

    .line 55
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 113
    return-void
.end method

.method private calculateDesiredHeader()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 910
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 917
    .local v0, "desiredHeader":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .line 912
    .end local v0    # "desiredHeader":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .restart local v0    # "desiredHeader":Landroid/view/ViewGroup;
    goto :goto_0

    .line 915
    .end local v0    # "desiredHeader":Landroid/view/ViewGroup;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .restart local v0    # "desiredHeader":Landroid/view/ViewGroup;
    goto :goto_0
.end method

.method private getIntrinsicHeight(F)I
    .locals 12
    .param p1, "maxAllowedVisibleChildren"    # F

    .prologue
    const/4 v11, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 471
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v8

    return v8

    .line 473
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 474
    .local v6, "intrinsicHeight":I
    const/4 v7, 0x0

    .line 475
    .local v7, "visibleChildren":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 476
    .local v1, "childCount":I
    const/4 v4, 0x1

    .line 477
    .local v4, "firstChild":Z
    const/4 v3, 0x0

    .line 478
    .local v3, "expandFactor":F
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v3

    .line 481
    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v2

    .line 482
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 483
    int-to-float v8, v7

    cmpl-float v8, v8, p1

    if-ltz v8, :cond_5

    .line 510
    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_b

    .line 511
    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    invoke-static {v9, v11, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 516
    :cond_3
    :goto_2
    return v6

    .line 481
    .end local v5    # "i":I
    :cond_4
    const/4 v2, 0x1

    .local v2, "childrenExpanded":Z
    goto :goto_0

    .line 486
    .end local v2    # "childrenExpanded":Z
    .restart local v5    # "i":I
    :cond_5
    if-nez v4, :cond_8

    .line 487
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_6

    .line 488
    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    invoke-static {v9, v10, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 506
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 507
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v6, v8

    .line 508
    add-int/lit8 v7, v7, 0x1

    .line 482
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 491
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    if-eqz v2, :cond_7

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    :goto_4
    add-int/2addr v6, v8

    goto :goto_3

    :cond_7
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    goto :goto_4

    .line 494
    :cond_8
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_9

    .line 495
    int-to-float v8, v6

    .line 497
    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 495
    invoke-static {v11, v9, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 504
    :goto_5
    const/4 v4, 0x0

    goto :goto_3

    .line 500
    :cond_9
    if-eqz v2, :cond_a

    .line 501
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v9

    .line 500
    :goto_6
    add-int/2addr v6, v8

    goto :goto_5

    .line 502
    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    .line 513
    :cond_b
    if-nez v2, :cond_3

    .line 514
    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr v8, v9

    float-to-int v6, v8

    goto :goto_2
.end method

.method private getMaxAllowedVisibleChildren()I
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    return v0
.end method

.method private getMaxAllowedVisibleChildren(Z)I
    .locals 1
    .param p1, "likeCollapsed"    # Z

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x3

    return v0

    .line 662
    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    :cond_1
    const/16 v0, 0x8

    return v0

    .line 665
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_4

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    .line 665
    if-eqz v0, :cond_4

    .line 667
    :cond_3
    const/4 v0, 0x5

    return v0

    .line 669
    :cond_4
    const/4 v0, 0x2

    return v0
.end method

.method private getMinHeight(IZ)I
    .locals 8
    .param p1, "maxAllowedVisibleChildren"    # I
    .param p2, "likeHighPriority"    # Z

    .prologue
    .line 1081
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1082
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v6}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v6

    return v6

    .line 1084
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 1085
    .local v4, "minExpandHeight":I
    const/4 v5, 0x0

    .line 1086
    .local v5, "visibleChildren":I
    const/4 v2, 0x1

    .line 1087
    .local v2, "firstChild":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 1088
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1089
    if-lt v5, p1, :cond_2

    .line 1101
    :cond_1
    int-to-float v6, v4

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 1102
    return v4

    .line 1092
    :cond_2
    if-nez v2, :cond_3

    .line 1093
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    add-int/2addr v4, v6

    .line 1097
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1098
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    .line 1099
    add-int/lit8 v5, v5, 0x1

    .line 1088
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1095
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getVisibleChildrenExpandHeight()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1045
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int v4, v7, v8

    .line 1046
    .local v4, "intrinsicHeight":I
    const/4 v6, 0x0

    .line 1047
    .local v6, "visibleChildren":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 1048
    .local v1, "childCount":I
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    .line 1049
    .local v5, "maxAllowedVisibleChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1050
    if-lt v6, v5, :cond_1

    .line 1060
    :cond_0
    return v4

    .line 1053
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1054
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1055
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    .line 1054
    :goto_1
    int-to-float v2, v7

    .line 1057
    .local v2, "childHeight":F
    int-to-float v7, v4

    add-float/2addr v7, v2

    float-to-int v4, v7

    .line 1058
    add-int/lit8 v6, v6, 0x1

    .line 1049
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1056
    .end local v2    # "childHeight":F
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    goto :goto_1
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p1, "visibleHeader"    # Landroid/view/View;

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne p1, v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0
.end method

.method private inflateDivider()Landroid/view/View;
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 405
    const v1, 0x7f0d00a5

    const/4 v2, 0x0

    .line 404
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    const v1, 0x7f0701cf

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    const v1, 0x7f0701d1

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    const v1, 0x7f0701dc

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mMaxNotificationHeight:I

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    const v1, 0x10500fc

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    const v1, 0x7f0701ce

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    const v1, 0x10500f9

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    .line 129
    return-void
.end method

.method private recreateAmbientHeader(Landroid/app/Notification$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 309
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 310
    .local v1, "notification":Landroid/service/notification/StatusBarNotification;
    if-nez p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 312
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 311
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 314
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 315
    .local v0, "header":Landroid/widget/RemoteViews;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 318
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 317
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 319
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 320
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 326
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 327
    return-void

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 336
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 337
    .local v2, "notification":Landroid/service/notification/StatusBarNotification;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v3, :cond_2

    .line 338
    if-nez p1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 340
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 339
    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 342
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 343
    .local v1, "header":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-nez v3, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/NotificationHeaderView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 346
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 347
    const v4, 0x102023b

    .line 346
    invoke-virtual {v3, v4}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "expandButton":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 351
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 350
    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 352
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    .line 357
    .end local v0    # "expandButton":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 358
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 364
    .end local v1    # "header":Landroid/widget/RemoteViews;
    :goto_1
    return-void

    .line 355
    .restart local v1    # "header":Landroid/widget/RemoteViews;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 360
    .end local v1    # "header":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 361
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 362
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    goto :goto_1
.end method

.method private resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;
    .param p2, "desiredHeader"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 895
    if-nez p1, :cond_0

    .line 896
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_1

    if-eq p1, p2, :cond_1

    .line 899
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 900
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 902
    :cond_1
    if-ne p1, p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 904
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 906
    :cond_2
    return-void
.end method

.method private startChildAlphaAnimations(Z)V
    .locals 10
    .param p1, "toVisible"    # Z

    .prologue
    .line 921
    if-eqz p1, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 922
    .local v4, "target":F
    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v4

    .line 923
    .local v3, "start":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 924
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 925
    const/4 v6, 0x5

    if-lt v2, v6, :cond_2

    .line 936
    :cond_0
    return-void

    .line 921
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "start":F
    .end local v4    # "target":F
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "target":F
    goto :goto_0

    .line 928
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "start":F
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 929
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAlpha(F)V

    .line 930
    new-instance v5, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 931
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 932
    iput v4, v5, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 933
    sget-object v6, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    mul-int/lit8 v7, v2, 0x32

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 934
    sget-object v6, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 924
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateChildrenClipping()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 712
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 713
    .local v2, "childCount":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v9

    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    sub-int v7, v9, v11

    .line 714
    .local v7, "layoutEnd":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 715
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 716
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_0

    .line 714
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 719
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    .line 720
    .local v3, "childTop":F
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float v1, v3, v9

    .line 721
    .local v1, "childBottom":F
    const/4 v8, 0x1

    .line 722
    .local v8, "visible":Z
    const/4 v4, 0x0

    .line 723
    .local v4, "clipBottomAmount":I
    int-to-float v9, v7

    cmpl-float v9, v3, v9

    if-lez v9, :cond_3

    .line 724
    const/4 v8, 0x0

    .line 729
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    const/4 v6, 0x1

    .line 730
    .local v6, "isVisible":Z
    :goto_3
    if-eq v8, v6, :cond_2

    .line 731
    if-eqz v8, :cond_5

    move v9, v10

    :goto_4
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 734
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    goto :goto_1

    .line 725
    .end local v6    # "isVisible":Z
    :cond_3
    int-to-float v9, v7

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1

    .line 726
    int-to-float v9, v7

    sub-float v9, v1, v9

    float-to-int v4, v9

    goto :goto_2

    .line 729
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "isVisible":Z
    goto :goto_3

    .line 731
    :cond_5
    const/4 v9, 0x4

    goto :goto_4

    .line 736
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "childBottom":F
    .end local v3    # "childTop":F
    .end local v4    # "clipBottomAmount":I
    .end local v6    # "isVisible":Z
    .end local v8    # "visible":Z
    :cond_6
    return-void
.end method

.method private updateExpansionStates()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 445
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v3, :cond_1

    .line 447
    :cond_0
    return-void

    .line 449
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 450
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 451
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 452
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v1, :cond_2

    if-ne v2, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 452
    goto :goto_1

    .line 454
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-void
.end method

.method private updateHeaderTransformation()V
    .locals 3

    .prologue
    .line 940
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    .line 942
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 944
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    .line 945
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    .line 949
    .end local v0    # "fraction":F
    :cond_0
    return-void
.end method

.method private updateHeaderVisibility(Z)V
    .locals 8
    .param p1, "animate"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 848
    .local v0, "currentHeader":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v1

    .line 850
    .local v1, "desiredHeader":Landroid/view/ViewGroup;
    if-ne v0, v1, :cond_0

    .line 851
    return-void

    .line 853
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eq v1, v5, :cond_1

    .line 854
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-ne v0, v5, :cond_2

    .line 855
    :cond_1
    const/4 p1, 0x0

    .line 858
    .end local p1    # "animate":Z
    :cond_2
    if-eqz p1, :cond_3

    .line 859
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 860
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 861
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 862
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    .line 863
    .local v3, "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    .line 864
    .local v2, "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    .line 865
    new-instance v5, Lcom/android/systemui/statusbar/stack/-$Lambda$Fvm4TbdUolFecUe7cO-FfeNLNcY;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/stack/-$Lambda$Fvm4TbdUolFecUe7cO-FfeNLNcY;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    .line 866
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v1, v5, :cond_7

    move v5, v6

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->startChildAlphaAnimations(Z)V

    .line 871
    .end local v2    # "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .end local v3    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_3
    :goto_1
    if-nez p1, :cond_6

    .line 872
    if-eqz v1, :cond_4

    .line 873
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 874
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 876
    :cond_4
    if-eqz v0, :cond_6

    .line 879
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    .line 880
    .local v4, "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    if-eqz v4, :cond_5

    .line 881
    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 883
    :cond_5
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 887
    .end local v4    # "wrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 888
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 889
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 891
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 892
    return-void

    .restart local v2    # "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .restart local v3    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_7
    move v5, v7

    .line 866
    goto :goto_0

    .line 868
    .end local v2    # "hiddenWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .end local v3    # "visibleWrapper":Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    :cond_8
    const/4 p1, 0x0

    .local p1, "animate":Z
    goto :goto_1
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 4
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "childIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 238
    if-gez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 239
    .local v1, "newIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 241
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 248
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    .line 249
    return-void

    .line 238
    .end local v0    # "divider":Landroid/view/View;
    .end local v1    # "newIndex":I
    :cond_0
    move v1, p2

    .restart local v1    # "newIndex":I
    goto :goto_0
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .locals 5
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
    .line 423
    .local p1, "childOrder":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez p1, :cond_0

    .line 424
    const/4 v4, 0x0

    return v4

    .line 426
    :cond_0
    const/4 v3, 0x0

    .line 427
    .local v3, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 428
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 429
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 430
    .local v1, "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eq v0, v1, :cond_1

    .line 431
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 432
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 433
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 434
    const/4 v3, 0x1

    .line 427
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    goto :goto_1

    .line 440
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 441
    return v3
.end method

.method public applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 13
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 673
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 674
    .local v2, "childCount":I
    new-instance v7, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 675
    .local v7, "tmpState":Lcom/android/systemui/statusbar/stack/ViewState;
    const/4 v5, 0x0

    .line 676
    .local v5, "expandFraction":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v5

    .line 679
    :cond_0
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 680
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v4

    .line 681
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_5

    .line 682
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 683
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v8

    .line 684
    .local v8, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 687
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 688
    .local v3, "divider":Landroid/view/View;
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 689
    iget v9, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, v7, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 690
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v9, :cond_4

    iget v9, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_4

    const/high16 v0, 0x3f000000    # 0.5f

    .line 691
    .local v0, "alpha":F
    :goto_2
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    iget v9, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_2

    .line 693
    iget v9, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 692
    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v11, v10, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 695
    :cond_2
    xor-int/lit8 v9, v4, 0x1

    iput-boolean v9, v7, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 696
    iput v0, v7, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 697
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 699
    invoke-virtual {v1, v11, v11, v12, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    .line 681
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 679
    .end local v0    # "alpha":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "divider":Landroid/view/View;
    .end local v6    # "i":I
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_3
    const/4 v4, 0x1

    .local v4, "dividersVisible":Z
    goto :goto_0

    .line 690
    .end local v4    # "dividersVisible":Z
    .restart local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v3    # "divider":Landroid/view/View;
    .restart local v6    # "i":I
    .restart local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_2

    .line 701
    .end local v0    # "alpha":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "divider":Landroid/view/View;
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v9, :cond_6

    .line 702
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 703
    iput-boolean v12, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 705
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v9, :cond_7

    .line 706
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 708
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 709
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 2

    .prologue
    .line 1070
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    .line 1071
    const/4 v1, 0x0

    .line 1070
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentHeaderView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getGroupExpandFraction()F
    .locals 5

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v2

    .line 1038
    .local v2, "visibleChildrenExpandedHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v1

    .line 1039
    .local v1, "minExpandHeight":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    .line 1040
    sub-int v4, v2, v1

    int-to-float v4, v4

    .line 1039
    div-float v0, v3, v4

    .line 1041
    .local v0, "factor":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    return v3

    .line 1037
    .end local v0    # "factor":F
    .end local v1    # "minExpandHeight":I
    .end local v2    # "visibleChildrenExpandedHeight":I
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleChildrenExpandHeight()I

    move-result v2

    .restart local v2    # "visibleChildrenExpandedHeight":I
    goto :goto_0
.end method

.method public getHeaderView()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    const/4 v0, 0x0

    return v0

    .line 1235
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v0

    .line 462
    .local v0, "maxAllowedVisibleChildren":I
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight(F)I

    move-result v1

    return v1
.end method

.method public getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getMaxContentHeight()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 979
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 980
    const/4 v6, 0x5

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v6

    return v6

    .line 983
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int v4, v6, v7

    .line 984
    .local v4, "maxContentHeight":I
    const/4 v5, 0x0

    .line 985
    .local v5, "visibleChildren":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 986
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 987
    const/16 v6, 0x8

    if-lt v5, v6, :cond_3

    .line 997
    :cond_1
    if-lez v5, :cond_2

    .line 998
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 1000
    :cond_2
    return v4

    .line 990
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 991
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 992
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v6

    .line 991
    :goto_1
    int-to-float v2, v6

    .line 994
    .local v2, "childHeight":F
    int-to-float v6, v4

    add-float/2addr v6, v2

    float-to-int v4, v6

    .line 995
    add-int/lit8 v5, v5, 0x1

    .line 986
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 993
    .end local v2    # "childHeight":F
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v6

    goto :goto_1
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    const/4 v0, 0x3

    .line 1066
    :goto_0
    const/4 v1, 0x0

    .line 1064
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v0

    return v0

    .line 1066
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getNotificationChildCount()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotificationChildren()Ljava/util/List;
    .locals 1
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
    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 6
    .param p1, "childInGroup"    # Landroid/view/View;

    .prologue
    .line 1164
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int v3, v4, v5

    .line 1166
    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1167
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1168
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    const/4 v2, 0x1

    .line 1169
    .local v2, "notGone":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 1170
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v3, v4

    .line 1172
    :cond_0
    if-ne v0, p1, :cond_2

    .line 1173
    return v3

    .line 1168
    .end local v2    # "notGone":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "notGone":Z
    goto :goto_1

    .line 1175
    :cond_2
    if-eqz v2, :cond_3

    .line 1176
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1166
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1179
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "notGone":Z
    :cond_4
    const/4 v4, 0x0

    return v4
.end method

.method public getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 22
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "parentState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    .line 527
    .local v4, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v17, v0

    .line 528
    .local v17, "yPosition":I
    const/4 v9, 0x1

    .line 529
    .local v9, "firstChild":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v14

    .line 530
    .local v14, "maxAllowedVisibleChildren":I
    add-int/lit8 v13, v14, -0x1

    .line 531
    .local v13, "lastVisibleIndex":I
    add-int/lit8 v10, v13, 0x1

    .line 532
    .local v10, "firstOverflowIndex":I
    const/4 v7, 0x0

    .line 533
    .local v7, "expandFactor":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v18

    xor-int/lit8 v8, v18, 0x1

    .line 534
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v7

    .line 536
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v10

    .line 539
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v18

    xor-int/lit8 v6, v18, 0x1

    .line 541
    :goto_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v4, :cond_c

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 543
    .local v3, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-nez v9, :cond_6

    .line 544
    if-eqz v8, :cond_4

    .line 545
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 562
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 563
    .local v5, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v12

    .line 564
    .local v12, "intrinsicHeight":I
    iput v12, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 565
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 566
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 569
    if-eqz v6, :cond_9

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v18

    .line 569
    :goto_4
    move/from16 v0, v18

    iput v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 572
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 573
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 574
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 575
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 576
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 577
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 578
    if-ge v11, v10, :cond_b

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v18, v7

    :goto_5
    move/from16 v0, v18

    iput v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 584
    :cond_1
    :goto_6
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 585
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    .line 586
    add-int v17, v17, v12

    .line 541
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 533
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v11    # "i":I
    .end local v12    # "intrinsicHeight":I
    :cond_2
    const/4 v8, 0x0

    .local v8, "expandingToExpandedGroup":Z
    goto/16 :goto_0

    .line 539
    .end local v8    # "expandingToExpandedGroup":Z
    :cond_3
    const/4 v6, 0x0

    .local v6, "childrenExpandedAndNotAnimating":Z
    goto/16 :goto_1

    .line 548
    .end local v6    # "childrenExpandedAndNotAnimating":Z
    .restart local v3    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v11    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v18, v0

    :goto_7
    add-int v17, v17, v18

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    move/from16 v18, v0

    goto :goto_7

    .line 551
    :cond_6
    if-eqz v8, :cond_7

    .line 552
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    .line 553
    const/16 v19, 0x0

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 552
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 559
    :goto_8
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 557
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    :goto_9
    add-int v17, v17, v18

    goto :goto_8

    :cond_8
    const/16 v18, 0x0

    goto :goto_9

    .line 571
    .restart local v5    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .restart local v12    # "intrinsicHeight":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 579
    :cond_a
    const/high16 v18, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 580
    :cond_b
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, v7, v18

    if-nez v18, :cond_1

    if-gt v11, v13, :cond_1

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    .line 582
    iget v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    iput v0, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto/16 :goto_6

    .line 589
    .end local v3    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v12    # "intrinsicHeight":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    .line 591
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v19

    .line 590
    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 592
    .local v16, "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_15

    .line 595
    :cond_d
    const/4 v2, 0x0

    .line 596
    .local v2, "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 597
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAmbientSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v2

    .line 601
    .end local v2    # "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    :cond_e
    :goto_a
    if-eqz v2, :cond_11

    .line 602
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v15

    .line 603
    .local v15, "mirrorView":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 604
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v15

    .line 606
    :cond_f
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 607
    move-object v15, v2

    .line 609
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v19, v0

    invoke-static/range {v15 .. v16}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 618
    .end local v15    # "mirrorView":Landroid/view/View;
    .end local v16    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    if-nez v18, :cond_12

    .line 620
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 622
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v19, v0

    if-eqz v6, :cond_16

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v18

    .line 623
    :goto_c
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 627
    :cond_13
    return-void

    .line 598
    .restart local v2    # "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .restart local v16    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 599
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v2

    .local v2, "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    goto/16 :goto_a

    .line 614
    .end local v2    # "alignView":Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    goto :goto_b

    .line 625
    .end local v16    # "overflowView":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_16
    const/16 v18, 0x0

    goto :goto_c
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 7
    .param p1, "y"    # F

    .prologue
    .line 793
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 794
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 795
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 796
    .local v4, "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    .line 797
    .local v2, "childTop":F
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v6

    int-to-float v6, v6

    add-float v5, v2, v6

    .line 798
    .local v5, "top":F
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v2, v6

    .line 799
    .local v0, "bottom":F
    cmpl-float v6, p1, v5

    if-ltz v6, :cond_0

    cmpg-float v6, p1, v0

    if-gtz v6, :cond_0

    .line 800
    return-object v4

    .line 794
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 803
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "top":F
    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method public getVisibleHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1216
    .local v0, "header":Landroid/view/NotificationHeaderView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 1219
    :cond_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_stack_NotificationChildrenContainer_37722()V
    .locals 1

    .prologue
    .line 865
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    return-void
.end method

.method public notifyShowAmbientChanged()V
    .locals 1

    .prologue
    .line 842
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 843
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 401
    return-void
.end method

.method public onExpansionChanged()V
    .locals 1

    .prologue
    .line 1223
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_1

    .line 1224
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_0

    .line 1225
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 1227
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1229
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v9, 0x0

    .line 133
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 134
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 135
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 138
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v9, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 139
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const/4 v3, 0x1

    .line 143
    .local v3, "isRtl":Z
    :goto_1
    if-eqz v3, :cond_6

    const/4 v4, 0x0

    .line 144
    .local v4, "left":I
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int v5, v4, v6

    .line 145
    .local v5, "right":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v4, v9, v5, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 147
    .end local v3    # "isRtl":Z
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v6, :cond_2

    .line 148
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v7}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v7

    .line 149
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v8

    .line 148
    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 151
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v6, :cond_3

    .line 152
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 153
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v7}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v7

    .line 154
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v8

    .line 152
    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    .line 156
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 157
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 158
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    .line 159
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    .line 157
    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 161
    :cond_4
    return-void

    .line 142
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "isRtl":Z
    goto :goto_1

    .line 143
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v4, v6, v7

    .restart local v4    # "left":I
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 165
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 166
    .local v10, "heightMode":I
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    if-ne v10, v0, :cond_4

    const/4 v7, 0x1

    .line 167
    .local v7, "hasFixedHeight":Z
    :goto_0
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    const/4 v12, 0x1

    .line 168
    .local v12, "isHeightLimited":Z
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 169
    .local v16, "size":I
    move/from16 v14, p2

    .line 170
    .local v14, "newHeightSpec":I
    if-nez v7, :cond_0

    if-eqz v12, :cond_1

    .line 171
    :cond_0
    const/high16 v18, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 173
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 174
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->measure(II)V

    .line 178
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 179
    .local v6, "dividerHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v19, v0

    add-int v9, v18, v19

    .line 180
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 181
    .local v3, "childCount":I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v4

    .line 182
    .local v4, "collapsedChildren":I
    if-le v3, v4, :cond_6

    add-int/lit8 v15, v4, -0x1

    .line 183
    .local v15, "overflowIndex":I
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v3, :cond_9

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 187
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-ne v11, v15, :cond_7

    const/4 v13, 0x1

    .line 188
    .local v13, "isOverflow":Z
    :goto_4
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    .line 188
    :goto_5
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSingleLineWidthIndention(I)V

    .line 191
    move/from16 v0, p1

    invoke-virtual {v2, v0, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->measure(II)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 194
    .local v5, "divider":Landroid/view/View;
    move/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->measure(II)V

    .line 195
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 196
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v9, v9, v18

    .line 183
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 166
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "childCount":I
    .end local v4    # "collapsedChildren":I
    .end local v5    # "divider":Landroid/view/View;
    .end local v6    # "dividerHeightSpec":I
    .end local v7    # "hasFixedHeight":Z
    .end local v9    # "height":I
    .end local v11    # "i":I
    .end local v12    # "isHeightLimited":Z
    .end local v13    # "isOverflow":Z
    .end local v14    # "newHeightSpec":I
    .end local v15    # "overflowIndex":I
    .end local v16    # "size":I
    .end local v17    # "width":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "hasFixedHeight":Z
    goto/16 :goto_0

    .line 167
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "isHeightLimited":Z
    goto/16 :goto_1

    .line 182
    .restart local v3    # "childCount":I
    .restart local v4    # "collapsedChildren":I
    .restart local v6    # "dividerHeightSpec":I
    .restart local v9    # "height":I
    .restart local v14    # "newHeightSpec":I
    .restart local v16    # "size":I
    .restart local v17    # "width":I
    :cond_6
    const/4 v15, -0x1

    .restart local v15    # "overflowIndex":I
    goto :goto_2

    .line 187
    .restart local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v11    # "i":I
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "isOverflow":Z
    goto :goto_4

    .line 190
    :cond_8
    const/16 v18, 0x0

    goto :goto_5

    .line 199
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v13    # "isOverflow":Z
    :cond_9
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    .line 200
    if-eqz v10, :cond_a

    .line 201
    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 204
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 205
    .local v8, "headerHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 208
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Landroid/view/NotificationHeaderView;->measure(II)V

    .line 212
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->measure(II)V

    .line 217
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setMeasuredDimension(II)V

    .line 218
    return-void
.end method

.method public onNotificationUpdated()V
    .locals 4

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 1159
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationColor()I

    move-result v2

    .line 1160
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationColorAmbient()I

    move-result v3

    .line 1158
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberColor(Landroid/widget/TextView;II)V

    .line 1161
    return-void
.end method

.method public pointInView(FFF)Z
    .locals 3
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    const/4 v0, 0x0

    .line 227
    neg-float v1, p3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    neg-float v1, p3

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRight:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 228
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 227
    :cond_0
    return v0
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 746
    return-void
.end method

.method public reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    .line 1117
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v4, :cond_0

    .line 1118
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1119
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 1121
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v4, :cond_1

    .line 1122
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1123
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 1125
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1126
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1127
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    .line 1129
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    .line 1130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    .line 1131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1132
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1133
    .local v3, "prevDivider":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1134
    .local v2, "index":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v0

    .line 1136
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 1137
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    .end local v0    # "divider":Landroid/view/View;
    .end local v2    # "index":I
    .end local v3    # "prevDivider":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 1140
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 1141
    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 1142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 1143
    return-void
.end method

.method public recreateNotificationHeader(Landroid/view/View$OnClickListener;)V
    .locals 8
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v7, 0x0

    .line 282
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 283
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 284
    .local v3, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 285
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 284
    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 286
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 287
    .local v2, "header":Landroid/widget/RemoteViews;
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-nez v4, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/NotificationHeaderView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 289
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 290
    const v5, 0x102023b

    .line 289
    invoke-virtual {v4, v5}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, "expandButton":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 294
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 293
    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 295
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    .line 300
    .end local v1    # "expandButton":Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 301
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateAmbientHeader(Landroid/app/Notification$Builder;)V

    .line 303
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    .line 305
    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 253
    .local v0, "childIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 257
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 259
    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 266
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 267
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    .line 269
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 272
    :cond_0
    return-void
.end method

.method public setActualHeight(I)V
    .locals 11
    .param p1, "actualHeight"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1004
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v8, :cond_0

    .line 1005
    return-void

    .line 1007
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 1008
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v3

    .line 1009
    .local v3, "fraction":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    .line 1010
    .local v6, "showingLowPriority":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderTransformation()V

    .line 1011
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    .line 1012
    .local v5, "maxAllowedVisibleChildren":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 1013
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 1014
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1016
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v6, :cond_1

    .line 1017
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v2, v8

    .line 1024
    .local v2, "childHeight":F
    :goto_1
    if-ge v4, v5, :cond_3

    .line 1025
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v7, v8

    .line 1027
    .local v7, "singleLineHeight":F
    invoke-static {v7, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    .line 1013
    .end local v7    # "singleLineHeight":F
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1018
    .end local v2    # "childHeight":F
    :cond_1
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1019
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v8

    int-to-float v2, v8

    .restart local v2    # "childHeight":F
    goto :goto_1

    .line 1021
    .end local v2    # "childHeight":F
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v2, v8

    .restart local v2    # "childHeight":F
    goto :goto_1

    .line 1030
    :cond_3
    float-to-int v8, v2

    invoke-virtual {v0, v8, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    goto :goto_2

    .line 1033
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "childHeight":F
    :cond_4
    return-void
.end method

.method public setChildrenExpanded(Z)V
    .locals 4
    .param p1, "childrenExpanded"    # Z

    .prologue
    .line 807
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 808
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    .line 809
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_0

    .line 810
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, p1}, Landroid/view/NotificationHeaderView;->setExpanded(Z)V

    .line 812
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 813
    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 814
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 815
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 1199
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    .line 1200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 1201
    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 821
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    .line 822
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 7
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberDark(Landroid/widget/TextView;ZZJ)V

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 1114
    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 3
    .param p1, "iconsVisible"    # Z

    .prologue
    .line 1183
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1185
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1189
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_1

    .line 1191
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 1192
    .restart local v0    # "header":Landroid/view/NotificationHeaderView;
    if-eqz v0, :cond_1

    .line 1193
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getIcon()Lcom/android/internal/widget/CachingIconView;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setForceHidden(Z)V

    .line 1196
    .end local v0    # "header":Landroid/view/NotificationHeaderView;
    :cond_1
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 2
    .param p1, "isLowPriority"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1204
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 1206
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    .line 1207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1209
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_1

    .line 1210
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    .line 1212
    :cond_1
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 5
    .param p1, "userLocked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 1147
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v3, :cond_0

    .line 1148
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    .line 1150
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1151
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1152
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1153
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1153
    goto :goto_1

    .line 1155
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    return-void
.end method

.method public showingAsLowPriority()Z
    .locals 1

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 13
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 750
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 751
    .local v2, "childCount":I
    new-instance v7, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 752
    .local v7, "tmpState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v5

    .line 753
    .local v5, "expandFraction":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2

    .line 754
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v4

    .line 755
    :goto_0
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 756
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 757
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v8

    .line 758
    .local v8, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v8, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 761
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 762
    .local v3, "divider":Landroid/view/View;
    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 763
    iget v9, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, v7, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 764
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v9, :cond_3

    iget v9, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_3

    const/high16 v0, 0x3f000000    # 0.5f

    .line 765
    .local v0, "alpha":F
    :goto_2
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    iget v9, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_1

    .line 767
    iget v9, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 766
    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v11, v10, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 769
    :cond_1
    xor-int/lit8 v9, v4, 0x1

    iput-boolean v9, v7, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 770
    iput v0, v7, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 771
    invoke-virtual {v7, v3, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 773
    invoke-virtual {v1, v11, v11, v12, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    .line 755
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 753
    .end local v0    # "alpha":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "divider":Landroid/view/View;
    .end local v6    # "i":I
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_2
    const/4 v4, 0x1

    .local v4, "dividersVisible":Z
    goto :goto_0

    .line 764
    .end local v4    # "dividersVisible":Z
    .restart local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v3    # "divider":Landroid/view/View;
    .restart local v6    # "i":I
    .restart local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_2

    .line 775
    .end local v0    # "alpha":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v3    # "divider":Landroid/view/View;
    .end local v8    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    .line 776
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    if-eqz v9, :cond_5

    .line 777
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget v0, v9, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 778
    .restart local v0    # "alpha":F
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput v11, v9, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 779
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 780
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput v0, v9, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 781
    iput-boolean v12, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 783
    .end local v0    # "alpha":F
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v9, v10, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 785
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v9, :cond_7

    .line 786
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 788
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    .line 789
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateChildrenHeaderAppearance()V

    .line 368
    return-void
.end method

.method public updateGroupOverflow()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 371
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 372
    .local v0, "childCount":I
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v1

    .line 373
    .local v1, "maxAllowedVisibleChildren":I
    if-le v0, v1, :cond_1

    .line 374
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    .line 375
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    sub-int v5, v0, v1

    .line 374
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 376
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-nez v3, :cond_0

    .line 377
    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    .line 378
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 384
    .local v2, "removedOverflowNumber":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getTransientViewCount()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addTransientView(Landroid/view/View;I)V

    .line 385
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 392
    .end local v2    # "removedOverflowNumber":Landroid/view/View;
    :cond_2
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 393
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    goto :goto_0
.end method

.method public updateHeaderForExpansion(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    const/4 v2, 0x0

    .line 967
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_0

    .line 968
    if-eqz p1, :cond_1

    .line 969
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 970
    .local v0, "cd":Landroid/graphics/drawable/ColorDrawable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->calculateBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 971
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v0}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    .end local v0    # "cd":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
