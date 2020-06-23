.class public Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconHPadding:I

.field private mIconSize:I

.field private mIconTint:I

.field private mIsFoldNotificationIcon:Z

.field private mIsSupportNewSpec:Z

.field private final mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationIconArea:Landroid/view/View;

.field private final mNotificationIconScale:F

.field private mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field mNotificationNum:[I

.field private mNotificationNumView:Landroid/widget/ImageView;

.field private mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mOldStatusbarIconNum:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNum:[I

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    .line 72
    const v0, 0x3f2872b0    # 0.658f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconScale:F

    .line 73
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsSupportNewSpec:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsFoldNotificationIcon:Z

    .line 78
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 79
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initializeNotificationAreaViews(Landroid/content/Context;)V

    .line 83
    return-void

    .line 53
    :array_0
    .array-data 4
        0x7f0803dd
        0x7f0803de
        0x7f0803df
        0x7f0803e0
        0x7f0803e1
        0x7f0803e2
        0x7f0803e3
        0x7f0803e4
        0x7f0803e5
    .end array-data
.end method

.method private applyNotificationIconsTint()V
    .locals 7

    .prologue
    .line 360
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 361
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 362
    .local v4, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v6, 0x7f0a0118

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 363
    .local v3, "isPreL":Z
    const/4 v0, 0x0

    .line 364
    .local v0, "color":I
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v1

    .line 365
    :goto_1
    if-eqz v1, :cond_0

    .line 366
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-static {v5, v4, v6}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    .line 368
    :cond_0
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 369
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const/4 v1, 0x1

    .local v1, "colorize":Z
    goto :goto_1

    .line 372
    .end local v0    # "color":I
    .end local v1    # "colorize":Z
    .end local v3    # "isPreL":Z
    .end local v4    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsSupportNewSpec:Z

    if-eqz v5, :cond_3

    .line 373
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNumView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 376
    :cond_3
    return-void
.end method

.method private generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const v3, 0x3f2872b0    # 0.658f

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 141
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result v2

    .line 145
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_8718(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_8848(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 1
    .param p0, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object v0
.end method

.method private reloadDimens(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 155
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsSupportNewSpec:Z

    if-eqz v1, :cond_0

    .line 156
    const v1, 0x7f0702b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    const v1, 0x7f0702af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    goto :goto_0
.end method

.method private updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Z)V
    .locals 31
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p3, "hostLayout"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .param p4, "showAmbient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/NotificationData;",
            "Ljava/util/function/Function",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    new-instance v25, Ljava/util/ArrayList;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v28

    .line 232
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v25, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v28

    move/from16 v0, v28

    if-ge v11, v0, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 238
    .local v27, "view":Landroid/view/View;
    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 239
    check-cast v27, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v27    # "view":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 240
    .local v9, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;Z)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 241
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v9    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 250
    :cond_1
    new-instance v20, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 251
    .local v20, "replacingIcons":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v23, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v11, 0x0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v28

    move/from16 v0, v28

    if-ge v11, v0, :cond_9

    .line 253
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 254
    .local v5, "child":Landroid/view/View;
    instance-of v0, v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    move/from16 v28, v0

    if-nez v28, :cond_3

    .line 252
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 257
    :cond_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 258
    const/4 v13, 0x0

    .local v13, "iconWasReplaced":Z
    move-object/from16 v19, v5

    .line 259
    check-cast v19, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 260
    .local v19, "removedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v18

    .line 261
    .local v18, "removedGroupKey":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_6

    .line 262
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 263
    .local v4, "candidate":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v28

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 264
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 263
    if-eqz v28, :cond_4

    .line 265
    if-nez v13, :cond_5

    .line 266
    const/4 v13, 0x1

    .line 261
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 268
    :cond_5
    const/4 v13, 0x0

    .line 273
    .end local v4    # "candidate":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_6
    if-eqz v13, :cond_8

    .line 274
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 275
    .local v22, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    if-nez v22, :cond_7

    .line 276
    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .restart local v22    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_7
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v22    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 285
    .end local v5    # "child":Landroid/view/View;
    .end local v13    # "iconWasReplaced":Z
    .end local v14    # "j":I
    .end local v18    # "removedGroupKey":Ljava/lang/String;
    .end local v19    # "removedIcon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v8, "duplicates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "key$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 287
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 288
    .restart local v22    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    .line 289
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 292
    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :cond_b
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/support/v4/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 293
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V

    .line 295
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 296
    .local v24, "toRemoveCount":I
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v24

    if-ge v11, v0, :cond_c

    .line 297
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 296
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 300
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v17

    .line 301
    .local v17, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v11, 0x0

    :goto_6
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v11, v0, :cond_e

    .line 302
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    .line 304
    .local v26, "v":Landroid/view/View;
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    .line 305
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-nez v28, :cond_d

    .line 306
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 310
    .end local v26    # "v":Landroid/view/View;
    :cond_e
    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v6

    .line 313
    .local v6, "childCount":I
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v6, :cond_10

    .line 314
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 315
    .local v3, "actual":Landroid/view/View;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 316
    .local v10, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v3, v10, :cond_f

    .line 313
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 319
    :cond_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeView(Landroid/view/View;)V

    .line 320
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addView(Landroid/view/View;I)V

    goto :goto_8

    .line 322
    .end local v3    # "actual":Landroid/view/View;
    .end local v10    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_10
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 323
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V

    .line 325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsSupportNewSpec:Z

    move/from16 v28, v0

    if-eqz v28, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsFoldNotificationIcon:Z

    move/from16 v28, v0

    if-eqz v28, :cond_15

    .line 326
    if-nez p4, :cond_11

    .line 327
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v7

    .line 328
    .local v7, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOldStatusbarIconNum:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v7, v0, :cond_11

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 330
    .local v21, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 331
    .local v12, "iconParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v28, 0x3

    move/from16 v0, v28

    if-gt v7, v0, :cond_12

    .line 332
    const v28, 0x7f0702b4

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 336
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    const/16 v28, 0x3

    move/from16 v0, v28

    if-le v7, v0, :cond_13

    .line 338
    const/16 v28, 0xb

    move/from16 v0, v28

    if-gt v7, v0, :cond_13

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNumView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNumView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNum:[I

    move-object/from16 v29, v0

    add-int/lit8 v30, v7, -0x4

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    :goto_a
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mOldStatusbarIconNum:I

    .line 354
    .end local v7    # "count":I
    .end local v12    # "iconParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "res":Landroid/content/res/Resources;
    :cond_11
    :goto_b
    return-void

    .line 334
    .restart local v7    # "count":I
    .restart local v12    # "iconParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v21    # "res":Landroid/content/res/Resources;
    :cond_12
    const v28, 0x7f0702b3

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_9

    .line 341
    :cond_13
    const/16 v28, 0xb

    move/from16 v0, v28

    if-le v7, v0, :cond_14

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNumView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNumView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNum:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNum:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 345
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNumView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 351
    .end local v7    # "count":I
    .end local v12    # "iconParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "res":Landroid/content/res/Resources;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNumView:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b
.end method


# virtual methods
.method protected getHeight()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method public getNotificationInnerAreaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    return-object v0
.end method

.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 86
    const v0, 0x7f0d00a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initNewFeatureView()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setStatusBar(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNumView:Landroid/widget/ImageView;

    .line 382
    return-void
.end method

.method protected initializeNotificationAreaViews(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f050053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsSupportNewSpec:Z

    .line 97
    const v2, 0x7f050054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsFoldNotificationIcon:Z

    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 101
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 103
    const v3, 0x7f0a01dd

    .line 102
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->initNewFeatureView()V

    .line 108
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsSupportNewSpec:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsFoldNotificationIcon:Z

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->resetNotificationIconParams()V

    .line 112
    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1
    .param p1, "tintArea"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "iconTint"    # I

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 184
    :goto_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 186
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->generateIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 122
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsSupportNewSpec:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIsFoldNotificationIcon:Z

    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->resetNotificationIconParams()V

    .line 135
    :cond_2
    return-void
.end method

.method public resetNotificationIconParams()V
    .locals 6

    .prologue
    const v5, 0x3f2872b0    # 0.658f

    .line 387
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 388
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 389
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const v3, 0x7f0702b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 390
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 393
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 392
    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 395
    .local v0, "countParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 396
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationNumView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    return-void
.end method

.method public setupShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 1
    .param p1, "shelf"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    .line 117
    return-void
.end method

.method protected shouldShowNotificationIcon(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData;Z)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;
    .param p3, "showAmbient"    # Z

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 195
    return v2

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isTopLevelChild(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    return v2

    .line 200
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 201
    return v2

    .line 204
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public updateNotificationIcons(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 3
    .param p1, "notificationData"    # Lcom/android/systemui/statusbar/NotificationData;

    .prologue
    .line 212
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 213
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Z)V

    .line 214
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc$1;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 215
    const/4 v2, 0x1

    .line 214
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateIconsForLayout(Lcom/android/systemui/statusbar/NotificationData;Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Z)V

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 218
    return-void
.end method
