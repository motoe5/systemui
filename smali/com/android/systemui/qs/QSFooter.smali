.class public Lcom/android/systemui/qs/QSFooter;
.super Landroid/widget/FrameLayout;
.source "QSFooter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFooter$1;
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAlarmStatusCollapsed:Landroid/view/View;

.field private mAlwaysShowMultiUserSwitch:Z

.field private mAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDate:Landroid/view/View;

.field private mDateTimeGroup:Landroid/view/View;

.field protected mEdit:Landroid/view/View;

.field protected mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field private mKeyguardShowing:Z

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEditIcon:Z

.field private mShowEmergencyCallsOnly:Z

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    new-instance v0, Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$1;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    return-void
.end method

.method private createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 260
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x0

    return-object v1

    .line 264
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 265
    .local v0, "animatorBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    const v1, 0x3f5c28f6    # 0.86f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 267
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 271
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-nez v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 275
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_qs_QSFooter_15634()V
    .locals 0

    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    const/4 v2, 0x1

    .line 448
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 450
    return-void
.end method

.method private updateAlarmVisibilities()V
    .locals 2

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 344
    return-void

    .line 343
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateAnimator(I)V
    .locals 11
    .param p1, "width"    # I

    .prologue
    .line 183
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v1

    .line 184
    .local v1, "numTiles":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070241

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 185
    iget-object v6, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070240

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 184
    sub-int v3, v5, v6

    .line 186
    .local v3, "size":I
    mul-int v5, v1, v3

    sub-int v5, p1, v5

    add-int/lit8 v6, v1, -0x1

    div-int v2, v5, v6

    .line 187
    .local v2, "remaining":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 189
    .local v0, "defSpace":I
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 190
    iget-object v6, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    const-string/jumbo v7, "translationX"

    .line 189
    const/4 v8, 0x2

    new-array v8, v8, [F

    .line 190
    sub-int v9, v2, v0

    neg-int v9, v9

    int-to-float v9, v9

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v8, v10

    .line 189
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 191
    iget-object v6, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const-string/jumbo v7, "rotation"

    .line 189
    const/4 v8, 0x2

    new-array v8, v8, [F

    .line 191
    const/high16 v9, -0x3d100000    # -120.0f

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v8, v10

    .line 189
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 193
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz v5, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 196
    .local v4, "translate":I
    :goto_0
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 197
    iget-object v6, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    const-string/jumbo v7, "translationX"

    .line 196
    const/4 v8, 0x2

    new-array v8, v8, [F

    .line 197
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v8, v10

    int-to-float v9, v4

    const/4 v10, 0x1

    aput v9, v8, v10

    .line 196
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 199
    iget-object v6, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const-string/jumbo v7, "alpha"

    .line 196
    const/4 v8, 0x2

    new-array v8, v8, [F

    .line 199
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v8, v10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    aput v9, v8, v10

    .line 196
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    .line 200
    new-instance v6, Lcom/android/systemui/qs/QSFooter$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/QSFooter$2;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    .line 196
    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 217
    .end local v4    # "translate":I
    :goto_1
    iget v5, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 218
    return-void

    .line 195
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v4, v5

    .restart local v4    # "translate":I
    goto :goto_0

    .line 212
    .end local v4    # "translate":I
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 213
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 215
    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method private updateListeners()V
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addCallback(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    .line 384
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 386
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeCallback(Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    .line 391
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 392
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

.method private updateResources()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const v1, 0x7f070218

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateSettingsAnimator()V

    .line 236
    return-void
.end method

.method private updateSettingsAnimator()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->isLayoutRtl()Z

    move-result v0

    .line 242
    .local v0, "isRtl":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/QSFooter$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFooter$3;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_1
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateAlarmVisibilities()V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    const v4, 0x7f0a02c6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 368
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 367
    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    .line 371
    .local v0, "isDemo":Z
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-eqz v1, :cond_5

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v1

    .line 371
    if-eqz v1, :cond_5

    .line 372
    xor-int/lit8 v1, v0, 0x1

    .line 371
    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 375
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_3

    .line 376
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_3
    return-void

    .end local v0    # "isDemo":Z
    :cond_4
    move v1, v3

    .line 368
    goto :goto_0

    .restart local v0    # "isDemo":Z
    :cond_5
    move v1, v3

    .line 373
    goto :goto_1
.end method


# virtual methods
.method public getExpandView()Landroid/view/View;
    .locals 1

    .prologue
    .line 355
    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_13668()V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateVisibilities()V

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->setClickable(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_16051()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 416
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 426
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->startSettingsActivity()V

    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1104f5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_16188()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->startSettingsActivity()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_5377(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 144
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_5476(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_QSFooter_7082(Landroid/view/View;IIIIIIII)V
    .locals 1
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
    .line 179
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFooter;->updateAnimator(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.systemui.action.TUNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 405
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v1, :cond_4

    .line 406
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68;

    invoke-direct {v2}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 409
    return-void

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    .line 412
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x196

    .line 411
    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 414
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$4;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 445
    :cond_1
    :goto_1
    return-void

    .line 413
    :cond_2
    const/16 v1, 0x1ea

    goto :goto_0

    .line 430
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->startSettingsActivity()V

    goto :goto_1

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 433
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    .line 434
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 433
    :goto_2
    const/16 v4, 0x3a2

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 436
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 438
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 439
    .local v0, "showIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_1

    .end local v0    # "showIntent":Landroid/app/PendingIntent;
    :cond_5
    move v2, v3

    .line 434
    goto :goto_2

    .line 441
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Landroid/content/Intent;

    .line 442
    const-string/jumbo v4, "android.intent.action.SHOW_ALARMS"

    .line 441
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    .line 224
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 335
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const v6, 0x1020003

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f050038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    .line 139
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    .line 140
    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_0
    const v1, 0x7f0a00a0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    .line 149
    const v1, 0x7f0a009f

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    .line 151
    const v1, 0x7f0a00d7

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    .line 153
    const v4, 0x7f050039

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setVisibility(I)V

    .line 156
    const v1, 0x7f0a0273

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 157
    const v1, 0x7f0a0274

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v1, 0x7f0a0033

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    .line 161
    const v1, 0x7f0a0032

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    .line 162
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v1, 0x7f0a01ca

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v2, 0x7f0a01c9

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 166
    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    .line 175
    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 176
    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 177
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 178
    new-instance v1, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 180
    return-void

    :cond_1
    move v1, v3

    .line 140
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 154
    goto/16 :goto_1
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 7
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const v6, 0x7f110097

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 292
    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "alarmString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Object;

    .line 296
    aput-object v0, v5, v2

    .line 295
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Object;

    .line 298
    aput-object v0, v5, v2

    .line 297
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    .end local v0    # "alarmString":Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz p1, :cond_2

    move v3, v1

    :goto_0
    if-eq v4, v3, :cond_1

    .line 301
    if-eqz p1, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSFooter;->updateAnimator(I)V

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->updateEverything()V

    .line 305
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 300
    goto :goto_0

    :cond_3
    move v1, v2

    .line 301
    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    .line 230
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 465
    if-eqz p2, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result v0

    .line 465
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 469
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x1010030

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    .line 470
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 468
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 454
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 455
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 456
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEmergencyCallsOnly:Z

    .line 457
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->updateEverything()V

    .line 461
    :cond_0
    return-void

    .line 454
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 285
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->updateEverything()V

    .line 287
    return-void
.end method

.method public setExpansion(F)V
    .locals 2
    .param p1, "headerExpansionFraction"    # F

    .prologue
    .line 308
    iput p1, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 311
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 310
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 317
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateAlarmVisibilities()V

    .line 319
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const v0, 0x3f6e147b    # 0.93f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setExpanded(Z)V

    .line 320
    return-void

    :cond_3
    move v0, p1

    .line 311
    goto :goto_0

    .line 319
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mKeyguardShowing:Z

    .line 280
    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 281
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateListeners()V

    .line 352
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 401
    :cond_0
    return-void
.end method

.method public updateEverything()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$Lambda$TLtOiA8GwnfYHeQxtht-MQhDX68$5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method
