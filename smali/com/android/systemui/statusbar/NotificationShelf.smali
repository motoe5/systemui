.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mDark:Z

.field private mHasItemsInStableShelf:Z

.field private mHideBackground:Z

.field private mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mIconAppearTopPadding:I

.field private mInteractive:Z

.field private final mIsSupportNewSpec:Z

.field private mMaxLayoutHeight:I

.field private mMaxShelfEnd:F

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

.field private mStatusBarHeight:I

.field private mStatusBarPaddingStart:I

.field private mStatusBarState:I

.field private mTmp:[I

.field private mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p1, "hasItemsInStableShelf"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p1, "openedAmount"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    const-string/jumbo v0, "debug.icon_opening_animations"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    .line 52
    const-string/jumbo v0, "debug.icon_scroll_animations"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIsSupportNewSpec:Z

    .line 85
    return-void
.end method

.method private getFullyClosedTranslation()F
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 111
    const v3, 0x7f0701d4

    .line 110
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 114
    const v3, 0x7f0702b5

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarPaddingStart:I

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 116
    const v3, 0x7f0701d1

    .line 115
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 119
    const v3, 0x7f0701ea

    .line 118
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070295

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 122
    .local v1, "padding":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1, v4, v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setPadding(IIII)V

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 124
    const v3, 0x7f070292

    .line 123
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    .line 125
    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1
    .param p1, "hasItemsInStableShelf"    # Z

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    .line 586
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    .line 587
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 589
    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1
    .param p1, "hideBackground"    # Z

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    .line 496
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    .line 497
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackground()V

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateOutline()V

    .line 500
    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V
    .locals 21
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "transitionAmount"    # F
    .param p3, "iconTransformDistance"    # F
    .param p4, "usingLinearInterpolation"    # Z
    .param p5, "isLastChild"    # Z

    .prologue
    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 411
    .local v5, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v7

    .line 413
    .local v7, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationIcon()Landroid/view/View;

    move-result-object v14

    .line 414
    .local v14, "rowIcon":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContentTranslation()F

    move-result v20

    add-float v12, v19, v20

    .line 415
    .local v12, "notificationIconPosition":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isTransformingIntoShelf()Z

    move-result v19

    xor-int/lit8 v18, v19, 0x1

    .line 416
    :goto_0
    if-eqz p4, :cond_0

    xor-int/lit8 v19, v18, 0x1

    if-eqz v19, :cond_0

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v19

    sub-float v12, v19, p3

    .line 423
    :cond_0
    const/4 v13, 0x0

    .line 425
    .local v13, "notificationIconSize":F
    if-eqz v14, :cond_9

    .line 426
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v8

    .line 427
    .local v8, "iconTopPadding":I
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v13, v0

    .line 431
    :goto_1
    int-to-float v0, v8

    move/from16 v19, v0

    add-float v12, v12, v19

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v19

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v16, v19, v20

    .line 433
    .local v16, "shelfIconPosition":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v20, v19

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v16, v16, v19

    .line 435
    sub-float v19, v12, v16

    .line 436
    const/16 v20, 0x0

    .line 434
    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    .line 438
    .local v9, "iconYTranslation":F
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v20

    mul-float v17, v19, v20

    .line 439
    .local v17, "shelfIconSize":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 440
    .local v3, "alpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v19

    xor-int/lit8 v11, v19, 0x1

    .line 441
    .local v11, "noIcon":Z
    if-eqz v11, :cond_1

    .line 443
    move/from16 v3, p2

    .line 444
    const/high16 v19, 0x40000000    # 2.0f

    div-float v13, v17, v19

    .line 447
    :cond_1
    move/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v13, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v10

    .line 449
    .local v10, "newSize":F
    if-eqz v7, :cond_7

    .line 450
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v10, v19

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v20

    div-float v19, v19, v20

    move/from16 v0, v19

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    .line 451
    iget v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    .line 452
    const/16 v19, 0x0

    cmpl-float v19, p2, v19

    if-nez v19, :cond_a

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isAnimating(Landroid/view/View;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    :goto_2
    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 453
    iput v3, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    .line 454
    iput v9, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->yTranslation:F

    .line 455
    if-eqz v18, :cond_2

    .line 456
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 457
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    .line 458
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    .line 459
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    iput v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    .line 460
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 462
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v19

    if-nez v19, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v19

    if-nez v19, :cond_5

    if-eqz p5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v19

    if-nez v19, :cond_4

    .line 463
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_5

    .line 464
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    .line 466
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getBackgroundColorWithoutTint()I

    move-result v4

    .line 467
    .local v4, "backgroundColor":I
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContrastedStaticDrawableColor(I)I

    move-result v15

    .line 468
    .local v15, "shelfColor":I
    if-nez v11, :cond_6

    if-eqz v15, :cond_6

    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v6

    .line 471
    .local v6, "iconColor":I
    iget v0, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v19, v0

    .line 470
    move/from16 v0, v19

    invoke-static {v6, v15, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v15

    .line 473
    .end local v6    # "iconColor":I
    :cond_6
    iput v15, v7, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    .line 475
    .end local v4    # "backgroundColor":I
    .end local v15    # "shelfColor":I
    :cond_7
    return-void

    .line 415
    .end local v3    # "alpha":F
    .end local v8    # "iconTopPadding":I
    .end local v9    # "iconYTranslation":F
    .end local v10    # "newSize":F
    .end local v11    # "noIcon":Z
    .end local v13    # "notificationIconSize":F
    .end local v16    # "shelfIconPosition":F
    .end local v17    # "shelfIconSize":F
    :cond_8
    const/16 v18, 0x0

    .local v18, "stayingInShelf":Z
    goto/16 :goto_0

    .line 429
    .end local v18    # "stayingInShelf":Z
    .restart local v13    # "notificationIconSize":F
    :cond_9
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    .restart local v8    # "iconTopPadding":I
    goto/16 :goto_1

    .line 452
    .restart local v3    # "alpha":F
    .restart local v9    # "iconYTranslation":F
    .restart local v10    # "newSize":F
    .restart local v11    # "noIcon":Z
    .restart local v16    # "shelfIconPosition":F
    .restart local v17    # "shelfIconSize":F
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2
.end method

.method private setOpenedAmount(F)V
    .locals 9
    .param p1, "openedAmount"    # F

    .prologue
    const/4 v6, 0x0

    .line 530
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    .line 531
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    .line 532
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelFullWidth()Z

    move-result v6

    if-nez v6, :cond_1

    .line 534
    const/high16 p1, 0x3f800000    # 1.0f

    .line 536
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 537
    .local v4, "start":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 538
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v7

    sub-int v4, v6, v7

    .line 540
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    .line 541
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v7

    int-to-float v7, v7

    .line 540
    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    float-to-int v5, v6

    .line 544
    .local v5, "width":I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIsSupportNewSpec:Z

    if-eqz v6, :cond_5

    .line 545
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    .line 550
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v1

    .line 551
    .local v1, "hasOverflow":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    .line 552
    .local v0, "collapsedPadding":I
    if-nez v1, :cond_3

    .line 555
    int-to-float v6, v0

    .line 556
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconSize()I

    move-result v7

    int-to-float v7, v7

    .line 555
    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 558
    :cond_3
    int-to-float v6, v0

    .line 559
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v7

    int-to-float v7, v7

    .line 558
    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    .line 561
    .local v2, "padding":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    .line 562
    int-to-float v6, v4

    .line 563
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v7

    int-to-float v7, v7

    .line 562
    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v3

    .line 564
    .local v3, "paddingStart":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    .line 565
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    .line 567
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIsSupportNewSpec:Z

    if-nez v6, :cond_4

    .line 568
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getVisualOverflowAdaption()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVisualOverflowAdaption(F)V

    .line 571
    :cond_4
    return-void

    .line 547
    .end local v0    # "collapsedPadding":I
    .end local v1    # "hasOverflow":Z
    .end local v2    # "padding":F
    .end local v3    # "paddingStart":F
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    goto :goto_0
.end method

.method private updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F
    .locals 16
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "expandAmount"    # F
    .param p3, "scrolling"    # Z
    .param p4, "scrollingFast"    # Z
    .param p5, "expandingAnimated"    # Z
    .param p6, "isLastChild"    # Z

    .prologue
    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v15

    .line 315
    .local v15, "viewStart":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int v11, v1, v2

    .line 316
    .local v11, "fullHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v5, v1, v2

    .line 317
    .local v5, "iconTransformDistance":F
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    move/from16 v0, p2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    mul-float/2addr v5, v1

    .line 318
    if-eqz p6, :cond_1

    .line 319
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 322
    add-int/lit8 v1, v11, -0x2

    if-lez v1, :cond_0

    add-int/lit8 v11, v11, -0x2

    .line 323
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v1

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    .line 323
    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 326
    :cond_1
    int-to-float v1, v11

    add-float v14, v15, v1

    .line 329
    .local v14, "viewEnd":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v13

    .line 330
    .local v13, "shelfStart":F
    cmpl-float v1, v14, v13

    if-ltz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 330
    if-eqz v1, :cond_5

    .line 333
    :cond_3
    cmpg-float v1, v15, v13

    if-gez v1, :cond_4

    .line 335
    sub-float v1, v13, v15

    int-to-float v2, v11

    div-float v10, v1, v2

    .line 336
    .local v10, "fullAmount":F
    sget-object v1, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    .line 338
    .local v12, "interpolatedAmount":F
    move/from16 v0, p2

    invoke-static {v12, v10, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v12

    .line 340
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v12

    .line 342
    .local v4, "fullTransitionAmount":F
    sub-float v1, v13, v15

    div-float v3, v1, v5

    .line 343
    .local v3, "iconTransitionAmount":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 344
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v1, v3

    .end local v10    # "fullAmount":F
    .end local v12    # "interpolatedAmount":F
    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 354
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V

    .line 356
    return v4

    .line 347
    .end local v3    # "iconTransitionAmount":F
    .end local v4    # "fullTransitionAmount":F
    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    .line 348
    .restart local v4    # "fullTransitionAmount":F
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "iconTransitionAmount":F
    goto :goto_0

    .line 351
    .end local v3    # "iconTransitionAmount":F
    .end local v4    # "fullTransitionAmount":F
    :cond_5
    const/4 v4, 0x0

    .line 352
    .restart local v4    # "fullTransitionAmount":F
    const/4 v3, 0x0

    .restart local v3    # "iconTransitionAmount":F
    goto :goto_0
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V
    .locals 11
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "iconTransitionAmount"    # F
    .param p3, "fullTransitionAmount"    # F
    .param p4, "iconTransformDistance"    # F
    .param p5, "scrolling"    # Z
    .param p6, "scrollingFast"    # Z
    .param p7, "expandingAnimated"    # Z
    .param p8, "isLastChild"    # Z

    .prologue
    .line 362
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 363
    .local v9, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v10

    .line 364
    .local v10, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-nez v10, :cond_0

    .line 365
    return-void

    .line 367
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 368
    .local v7, "clampedAmount":F
    :goto_0
    cmpl-float v1, v7, p3

    if-nez v1, :cond_1

    .line 369
    if-nez p6, :cond_8

    move/from16 v1, p7

    :goto_1
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 370
    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v1, :cond_9

    .line 371
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_a

    .line 370
    .end local p5    # "scrolling":Z
    :goto_2
    move/from16 v0, p5

    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 372
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v1, :cond_b

    .line 373
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 372
    :goto_3
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 374
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    .line 374
    sub-float/2addr v1, v2

    .line 375
    const/4 v2, 0x0

    .line 374
    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 377
    :cond_1
    if-nez p6, :cond_2

    if-eqz p7, :cond_3

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_3

    .line 378
    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 377
    if-eqz v1, :cond_3

    .line 379
    :cond_2
    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->cancelAnimations(Landroid/view/View;)V

    .line 380
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 381
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    .line 384
    :cond_3
    if-nez p8, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v1, :cond_4

    .line 385
    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    .line 384
    if-eqz v1, :cond_d

    .line 386
    :cond_4
    move v3, p2

    .line 393
    .local v3, "transitionAmount":F
    :goto_5
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_5

    .line 394
    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    .line 393
    if-eqz v1, :cond_f

    .end local p3    # "fullTransitionAmount":F
    :cond_5
    :goto_6
    iput p3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 397
    iput v7, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 398
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    if-nez v1, :cond_10

    .line 399
    if-nez p8, :cond_6

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    .line 398
    if-eqz v1, :cond_10

    .line 400
    :cond_6
    move v8, p2

    .line 402
    .local v8, "contentTransformationAmount":F
    :goto_7
    move/from16 v0, p8

    invoke-virtual {p1, v8, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    .line 404
    cmpl-float v1, v7, v3

    if-eqz v1, :cond_11

    const/4 v5, 0x1

    :goto_8
    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move/from16 v6, p8

    .line 403
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V

    .line 405
    return-void

    .line 367
    .end local v3    # "transitionAmount":F
    .end local v7    # "clampedAmount":F
    .end local v8    # "contentTransformationAmount":F
    .restart local p3    # "fullTransitionAmount":F
    .restart local p5    # "scrolling":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "clampedAmount":F
    goto/16 :goto_0

    .line 369
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 370
    :cond_9
    const/16 p5, 0x1

    goto/16 :goto_2

    .line 371
    :cond_a
    const/16 p5, 0x0

    goto/16 :goto_2

    .line 372
    .end local p5    # "scrolling":Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    .line 374
    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    .line 389
    :cond_d
    move v3, v7

    .line 390
    .restart local v3    # "transitionAmount":F
    iget v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_e

    .line 391
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    xor-int/lit8 v1, v1, 0x1

    .line 390
    :goto_9
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    :cond_f
    move p3, v3

    .line 396
    goto :goto_6

    .line 401
    .end local p3    # "fullTransitionAmount":F
    :cond_10
    const/4 v8, 0x0

    .restart local v8    # "contentTransformationAmount":F
    goto :goto_7

    .line 404
    :cond_11
    const/4 v5, 0x0

    goto :goto_8
.end method

.method private updateInteractiveness()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 612
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_0

    .line 613
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    xor-int/lit8 v0, v0, 0x1

    .line 612
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    .line 614
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setClickable(Z)V

    .line 615
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setFocusable(Z)V

    .line 616
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setImportantForAccessibility(I)V

    .line 618
    return-void

    .line 612
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 617
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "notificationClipEnd"    # F

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 293
    .local v2, "viewEnd":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    .line 294
    :goto_0
    cmpl-float v3, v2, p2

    if-lez v3, :cond_3

    .line 295
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    xor-int/lit8 v3, v1, 0x1

    .line 294
    if-eqz v3, :cond_3

    .line 296
    :cond_0
    sub-float v3, v2, p2

    float-to-int v0, v3

    .line 297
    .local v0, "clipBottomAmount":I
    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 301
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    .line 305
    .end local v0    # "clipBottomAmount":I
    :goto_1
    return-void

    .line 293
    :cond_2
    const/4 v1, 0x1

    .local v1, "isPinned":Z
    goto :goto_0

    .line 303
    .end local v1    # "isPinned":Z
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    goto :goto_1
.end method

.method private updateRelativeOffset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLocationOnScreen([I)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLocationOnScreen([I)V

    .line 526
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    .line 527
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "hostLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 106
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 107
    return-void
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public getNotGoneIndex()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return v0
.end method

.method public getNotificationMergeSize()I
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public hasItemsInStableShelf()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    return v0
.end method

.method public hasNoContentHeight()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method protected isInteractive()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    return v0
.end method

.method protected needsOutline()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->needsOutline()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    .line 131
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 90
    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipChildren(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipToPadding(Z)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToActualHeight(Z)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipChildren(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToPadding(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setShowAllIcons(Z)V

    .line 98
    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 99
    const-wide/16 v2, 0x2bc

    .line 98
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    .line 102
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 645
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 646
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v1, :cond_0

    .line 647
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 649
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 651
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 650
    const/16 v2, 0x10

    .line 649
    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 652
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 654
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 518
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 520
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    .line 660
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 632
    if-nez p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 636
    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1
    .param p1, "collapsedIcons"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 602
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 137
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDark(ZZJ)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 140
    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0
    .param p1, "maxLayoutHeight"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    .line 575
    return-void
.end method

.method public setMaxShelfEnd(F)V
    .locals 0
    .param p1, "maxShelfEnd"    # F

    .prologue
    .line 626
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxShelfEnd:F

    .line 627
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .prologue
    .line 605
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    .line 606
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    .line 609
    :cond_0
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateAppearance()V
    .locals 31

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v28

    .line 199
    .local v28, "shelfStart":F
    const/16 v24, 0x0

    .line 200
    .local v24, "numViewsInShelf":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v20

    .line 201
    .local v20, "lastChild":Landroid/view/View;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 202
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v30

    mul-int/lit8 v30, v30, 0x2

    sub-int v2, v2, v30

    int-to-float v0, v2

    move/from16 v19, v0

    .line 203
    .local v19, "interpolationStart":F
    const/4 v4, 0x0

    .line 204
    .local v4, "expandAmount":F
    cmpl-float v2, v28, v19

    if-ltz v2, :cond_0

    .line 205
    sub-float v2, v28, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v4, v2, v30

    .line 206
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 209
    :cond_0
    const/16 v23, 0x0

    .line 210
    .local v23, "notificationIndex":I
    const/16 v21, 0x0

    .line 211
    .local v21, "notGoneIndex":I
    const/4 v13, 0x0

    .line 212
    .local v13, "colorOfViewBeforeLast":I
    const/4 v10, 0x0

    .line 213
    .local v10, "backgroundForceHidden":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-get0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 214
    const/4 v10, 0x1

    .line 216
    :cond_1
    const/4 v14, 0x0

    .line 217
    .local v14, "colorTwoBefore":I
    const/16 v26, 0x0

    .line 218
    .local v26, "previousColor":I
    const/16 v29, 0x0

    .line 219
    .local v29, "transitionAmount":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v15

    .line 220
    .local v15, "currentScrollVelocity":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v2, v15, v2

    if-gtz v2, :cond_9

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandingVelocity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v2, v2, v30

    if-lez v2, :cond_a

    const/4 v6, 0x1

    .line 223
    .local v6, "scrollingFast":Z
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-lez v2, :cond_c

    const/4 v5, 0x1

    .line 224
    .local v5, "scrolling":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelTracking()Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    .line 226
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v11

    .line 227
    .local v11, "baseZHeight":I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_13

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableView;

    .line 229
    .local v12, "child":Lcom/android/systemui/statusbar/ExpandableView;
    add-int/lit8 v23, v23, 0x1

    .line 230
    instance-of v2, v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_2

    .line 231
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v2

    const/16 v30, 0x8

    move/from16 v0, v30

    if-eq v2, v0, :cond_2

    move-object v3, v12

    .line 234
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 236
    .local v3, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v2

    int-to-float v0, v11

    move/from16 v30, v0

    cmpl-float v2, v2, v30

    if-lez v2, :cond_e

    const/4 v9, 0x1

    .line 237
    .local v9, "aboveShelf":Z
    :goto_4
    move-object/from16 v0, v20

    if-ne v12, v0, :cond_f

    const/4 v8, 0x1

    .line 238
    .local v8, "isLastChild":Z
    :goto_5
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v27

    .line 239
    .local v27, "rowTranslationY":F
    if-nez v8, :cond_3

    if-nez v9, :cond_3

    if-eqz v10, :cond_10

    .line 240
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v22, v28, v2

    .line 251
    .local v22, "notificationClipEnd":F
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    move-object/from16 v2, p0

    .line 252
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F

    move-result v18

    .line 254
    .local v18, "inShelfAmount":F
    add-float v24, v24, v18

    .line 255
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v25

    .line 256
    .local v25, "ownColorUntinted":I
    cmpl-float v2, v27, v28

    if-ltz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v2, v0, :cond_11

    .line 257
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setTintColor(I)V

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOverrideTintColor(IF)V

    .line 265
    :cond_5
    :goto_7
    if-eqz v8, :cond_12

    .line 266
    if-nez v13, :cond_6

    .line 267
    move/from16 v13, v25

    .line 269
    :cond_6
    move/from16 v0, v18

    invoke-virtual {v3, v13, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    .line 274
    :goto_8
    if-nez v21, :cond_7

    xor-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_8

    .line 275
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    .line 277
    :cond_8
    add-int/lit8 v21, v21, 0x1

    .line 278
    move/from16 v26, v25

    goto/16 :goto_3

    .line 220
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "scrolling":Z
    .end local v6    # "scrollingFast":Z
    .end local v8    # "isLastChild":Z
    .end local v9    # "aboveShelf":Z
    .end local v11    # "baseZHeight":I
    .end local v12    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v18    # "inShelfAmount":F
    .end local v22    # "notificationClipEnd":F
    .end local v25    # "ownColorUntinted":I
    .end local v27    # "rowTranslationY":F
    :cond_9
    const/4 v6, 0x1

    .restart local v6    # "scrollingFast":Z
    goto/16 :goto_0

    .line 222
    .end local v6    # "scrollingFast":Z
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "scrollingFast":Z
    goto/16 :goto_0

    .line 221
    .end local v6    # "scrollingFast":Z
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "scrollingFast":Z
    goto/16 :goto_0

    .line 223
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "scrolling":Z
    goto/16 :goto_1

    .line 224
    :cond_d
    const/4 v7, 0x0

    .local v7, "expandingAnimated":Z
    goto/16 :goto_2

    .line 236
    .end local v7    # "expandingAnimated":Z
    .restart local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v11    # "baseZHeight":I
    .restart local v12    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "aboveShelf":Z
    goto :goto_4

    .line 237
    :cond_f
    const/4 v8, 0x0

    .restart local v8    # "isLastChild":Z
    goto :goto_5

    .line 242
    .restart local v27    # "rowTranslationY":F
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    int-to-float v2, v2

    sub-float v22, v28, v2

    .line 243
    .restart local v22    # "notificationClipEnd":F
    sub-float v16, v22, v27

    .line 244
    .local v16, "height":F
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBelowSpeedBump()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v16, v2

    if-gtz v2, :cond_4

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v27

    .line 247
    move/from16 v0, v28

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v22

    goto/16 :goto_6

    .line 261
    .end local v16    # "height":F
    .restart local v18    # "inShelfAmount":F
    .restart local v25    # "ownColorUntinted":I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v2, v0, :cond_5

    .line 262
    move/from16 v14, v26

    .line 263
    move/from16 v29, v18

    goto :goto_7

    .line 271
    :cond_12
    move/from16 v13, v25

    .line 272
    const/4 v2, 0x0

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    goto :goto_8

    .line 280
    .end local v3    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v8    # "isLastChild":Z
    .end local v9    # "aboveShelf":Z
    .end local v12    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v18    # "inShelfAmount":F
    .end local v22    # "notificationClipEnd":F
    .end local v25    # "ownColorUntinted":I
    .end local v27    # "rowTranslationY":F
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 283
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v24, v2

    if-gez v2, :cond_15

    const/16 v17, 0x1

    .line 284
    .local v17, "hideBackground":Z
    :goto_9
    if-nez v17, :cond_16

    .end local v10    # "backgroundForceHidden":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    .line 285
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v2, v0, :cond_14

    .line 286
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    .line 288
    :cond_14
    return-void

    .line 283
    .end local v17    # "hideBackground":Z
    .restart local v10    # "backgroundForceHidden":Z
    :cond_15
    const/16 v17, 0x0

    .restart local v17    # "hideBackground":Z
    goto :goto_9

    .line 284
    :cond_16
    const/4 v10, 0x1

    goto :goto_a
.end method

.method public updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 11
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 159
    .local v0, "lastView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v8

    add-float/2addr v5, v8

    .line 161
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v8

    .line 160
    add-float v2, v5, v8

    .line 162
    .local v2, "maxShelfEnd":F
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v1

    .line 163
    .local v1, "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget v5, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v8, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v8, v8

    add-float v4, v5, v8

    .line 164
    .local v4, "viewEnd":F
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 165
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    .line 166
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v9, v9, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v9

    .line 166
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    .line 168
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v8

    int-to-float v8, v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->zTranslation:F

    .line 169
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v5, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v8

    sub-float/2addr v5, v8

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 169
    div-float v3, v5, v8

    .line 171
    .local v3, "openedAmount":F
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 172
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set2(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 173
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->clipTopAmount:I

    .line 174
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    int-to-float v5, v5

    iput v5, v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->alpha:F

    .line 175
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v8

    if-nez v8, :cond_2

    :goto_1
    iput-boolean v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->belowSpeedBump:Z

    .line 176
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v10, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->shadowAlpha:F

    .line 177
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hideSensitive:Z

    .line 178
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationX()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->xTranslation:F

    .line 179
    iget v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 180
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v6, v6, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    .line 182
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    .line 183
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    .line 184
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set1(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    .line 190
    .end local v1    # "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v2    # "maxShelfEnd":F
    .end local v3    # "openedAmount":F
    .end local v4    # "viewEnd":F
    :goto_2
    return-void

    .restart local v1    # "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .restart local v2    # "maxShelfEnd":F
    .restart local v3    # "openedAmount":F
    .restart local v4    # "viewEnd":F
    :cond_1
    move v5, v7

    .line 174
    goto :goto_0

    :cond_2
    move v7, v6

    .line 175
    goto :goto_1

    .line 186
    .end local v1    # "lastViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v2    # "maxShelfEnd":F
    .end local v3    # "openedAmount":F
    .end local v4    # "viewEnd":F
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    .line 187
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/16 v7, 0x40

    iput v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->location:I

    .line 188
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    goto :goto_2
.end method
