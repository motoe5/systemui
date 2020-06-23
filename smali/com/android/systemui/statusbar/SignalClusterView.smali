.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mActivityEnabled:Z

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescription:Ljava/lang/String;

.field private mAirplaneIconId:I

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockMobile:Z

.field private mBlockWifi:Z

.field private mDarkIntensity:F

.field private final mEndPadding:I

.field private final mEndPaddingNothingVisible:I

.field mEthernet:Landroid/widget/ImageView;

.field mEthernetDark:Landroid/widget/ImageView;

.field private mEthernetDescription:Ljava/lang/String;

.field mEthernetGroup:Landroid/view/ViewGroup;

.field private mEthernetIconId:I

.field private mEthernetVisible:Z

.field private mForceBlockWifi:Z

.field private final mIconScaleFactor:F

.field private mIconTint:I

.field private mIsAirplaneMode:Z

.field private final mIsSupportNewSpec:Z

.field private mLastAirplaneIconId:I

.field private mLastEthernetIconId:I

.field private mLastVpnIconId:I

.field private mLastWifiActivityIconId:I

.field private mLastWifiActivityId:I

.field private mLastWifiBadgeId:I

.field private mLastWifiStrengthId:I

.field private final mMobileDataIconStartPadding:I

.field mMobileSignalGroup:Landroid/widget/LinearLayout;

.field private final mMobileSignalGroupEndPadding:I

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNoSims:Landroid/widget/ImageView;

.field mNoSimsCombo:Landroid/view/View;

.field mNoSimsDark:Landroid/widget/ImageView;

.field private mNoSimsVisible:Z

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryTelephonyPadding:I

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mSignalClusterViewScale:F

.field mSignalMarginStartView:Landroid/view/View;

.field private final mTintArea:Landroid/graphics/Rect;

.field mVpn:Landroid/widget/ImageView;

.field private mVpnIconId:I

.field private mVpnVisible:Z

.field private final mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field private mWifiActivityIconId:I

.field mWifiActivityIn:Landroid/widget/ImageView;

.field mWifiActivityOut:Landroid/widget/ImageView;

.field private mWifiActivityView:Landroid/widget/ImageView;

.field mWifiAirplaneSpacer:Landroid/view/View;

.field private mWifiBadgeId:I

.field mWifiDark:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiEpdg:Landroid/widget/ImageView;

.field private mWifiEpdgVisible:Z

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiIn:Z

.field private mWifiOut:Z

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconStartPadding:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView;)Lcom/android/systemui/statusbar/policy/SecurityController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/SignalClusterView;Z)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "isBranded"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/SignalClusterView;FLandroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "darkIntensity"    # F
    .param p2, "lightIcon"    # Landroid/view/View;
    .param p3, "darkIcon"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "iconId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "tint"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-string/jumbo v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 80
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    .line 81
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    .line 82
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 83
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    .line 84
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 85
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    .line 86
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconId:I

    .line 87
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 88
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 89
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    .line 90
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 93
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    .line 94
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 95
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 96
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    .line 101
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 103
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    .line 114
    const v2, 0x3f666666    # 0.9f

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalClusterViewScale:F

    .line 134
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityIconId:I

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0701aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 156
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    .line 159
    const v2, 0x7f0701a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 158
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconStartPadding:I

    .line 160
    const v2, 0x7f0702ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 161
    const v2, 0x7f070293

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    .line 162
    const v2, 0x7f070296

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    .line 164
    const v2, 0x7f0701c9

    .line 163
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    .line 165
    const v2, 0x7f050053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsSupportNewSpec:Z

    .line 166
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 167
    .local v1, "typedValue":Landroid/util/TypedValue;
    const v2, 0x7f0702b0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 168
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    .line 169
    const-class v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 170
    const-class v2, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->updateActivityEnabled()V

    .line 172
    return-void
.end method

.method private apply()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 573
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    return-void

    .line 575
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_b

    move v5, v6

    :goto_0
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_c

    .line 577
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    if-eq v5, v9, :cond_1

    .line 578
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    invoke-direct {p0, v5, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 579
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    .line 581
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    :goto_1
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v9, "SignalClusterView"

    const-string/jumbo v10, "vpn: %s"

    new-array v11, v8, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_d

    const-string/jumbo v5, "VISIBLE"

    :goto_2
    aput-object v5, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v5, :cond_e

    .line 588
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    if-eq v5, v9, :cond_3

    .line 589
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v5, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 590
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v5, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 591
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 593
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 599
    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v9, "SignalClusterView"

    .line 600
    const-string/jumbo v10, "ethernet: %s"

    new-array v11, v8, [Ljava/lang/Object;

    .line 601
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v5, :cond_f

    const-string/jumbo v5, "VISIBLE"

    :goto_4
    aput-object v5, v11, v6

    .line 600
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 599
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_14

    .line 604
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    if-ne v5, v9, :cond_5

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    if-eq v5, v9, :cond_6

    .line 605
    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_10

    .line 606
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-direct {p0, v5, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 607
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-direct {p0, v5, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 612
    :goto_5
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 613
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    .line 615
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    if-eqz v5, :cond_11

    move v5, v6

    :goto_6
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconId:I

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityIconId:I

    if-eq v5, v9, :cond_8

    .line 620
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconId:I

    if-eqz v5, :cond_7

    .line 621
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconId:I

    invoke-direct {p0, v5, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 624
    :cond_7
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityIconId:I

    .line 626
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconId:I

    if-eqz v5, :cond_12

    move v5, v6

    :goto_7
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 631
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiEpdg:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiEpdgVisible:Z

    if-eqz v5, :cond_13

    move v5, v6

    :goto_8
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 637
    :goto_9
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string/jumbo v9, "SignalClusterView"

    .line 638
    const-string/jumbo v10, "wifi: %s sig=%d"

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Object;

    .line 639
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_15

    const-string/jumbo v5, "VISIBLE"

    :goto_a
    aput-object v5, v11, v6

    .line 640
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v8

    .line 638
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 637
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_9
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIn:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    if-eqz v5, :cond_16

    move v5, v6

    :goto_b
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityOut:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    if-eqz v5, :cond_17

    move v5, v6

    :goto_c
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "anyMobileVisible":Z
    const/4 v2, 0x0

    .line 647
    .local v2, "firstMobileTypeId":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "state$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 648
    .local v3, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->apply(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 649
    if-nez v0, :cond_a

    .line 650
    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    .line 651
    const/4 v0, 0x1

    goto :goto_d

    .end local v0    # "anyMobileVisible":Z
    .end local v2    # "firstMobileTypeId":I
    .end local v3    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .end local v4    # "state$iterator":Ljava/util/Iterator;
    :cond_b
    move v5, v7

    .line 575
    goto/16 :goto_0

    .line 583
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 585
    :cond_d
    const-string/jumbo v5, "GONE"

    goto/16 :goto_2

    .line 596
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 601
    :cond_f
    const-string/jumbo v5, "GONE"

    goto/16 :goto_4

    .line 609
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    invoke-direct {p0, v5, v9, v10}, Lcom/android/systemui/statusbar/SignalClusterView;->setBadgedWifiIconForView(Landroid/widget/ImageView;II)V

    .line 610
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    invoke-direct {p0, v5, v9, v10}, Lcom/android/systemui/statusbar/SignalClusterView;->setBadgedWifiIconForView(Landroid/widget/ImageView;II)V

    goto/16 :goto_5

    :cond_11
    move v5, v7

    .line 615
    goto/16 :goto_6

    :cond_12
    move v5, v7

    .line 626
    goto/16 :goto_7

    :cond_13
    move v5, v7

    .line 631
    goto/16 :goto_8

    .line 633
    :cond_14
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 634
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiEpdg:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 639
    :cond_15
    const-string/jumbo v5, "GONE"

    goto/16 :goto_a

    :cond_16
    move v5, v7

    .line 642
    goto :goto_b

    :cond_17
    move v5, v7

    .line 643
    goto :goto_c

    .line 656
    .restart local v0    # "anyMobileVisible":Z
    .restart local v2    # "firstMobileTypeId":I
    .restart local v4    # "state$iterator":Ljava/util/Iterator;
    :cond_18
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_1d

    .line 657
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    if-eq v5, v9, :cond_19

    .line 658
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-direct {p0, v5, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 659
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 661
    :cond_19
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    :goto_e
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_1a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v5, :cond_1b

    :cond_1a
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_1e

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v5, :cond_1e

    .line 670
    :cond_1b
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 675
    :goto_f
    if-eqz v0, :cond_1f

    if-eqz v2, :cond_1f

    :cond_1c
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_20

    .line 676
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 681
    :goto_10
    iget-object v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v5, :cond_21

    move v5, v6

    :goto_11
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsSupportNewSpec:Z

    if-eqz v5, :cond_24

    .line 684
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 685
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 684
    or-int/2addr v5, v9

    .line 686
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 684
    or-int/2addr v5, v9

    .line 687
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 684
    or-int/2addr v5, v9

    .line 688
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 684
    or-int/2addr v9, v5

    .line 689
    if-eqz v0, :cond_22

    if-eqz v2, :cond_22

    move v5, v8

    .line 684
    :goto_12
    or-int/2addr v5, v9

    if-eqz v5, :cond_23

    .line 690
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalMarginStartView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :goto_13
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v5, :cond_25

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v5, :cond_25

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v5, :cond_25

    if-nez v0, :cond_25

    .line 700
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 699
    if-nez v5, :cond_25

    .line 700
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 701
    :goto_14
    if-eqz v1, :cond_26

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    :goto_15
    invoke-virtual {p0, v6, v6, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->setPaddingRelative(IIII)V

    .line 702
    return-void

    .line 664
    :cond_1d
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    .line 672
    :cond_1e
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    .line 675
    :cond_1f
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v5, :cond_1c

    .line 678
    :cond_20
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_21
    move v5, v7

    .line 681
    goto :goto_11

    :cond_22
    move v5, v6

    .line 689
    goto :goto_12

    .line 692
    :cond_23
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalMarginStartView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 695
    :cond_24
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalMarginStartView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 699
    :cond_25
    const/4 v1, 0x1

    .local v1, "anythingVisible":Z
    goto :goto_14

    .line 701
    .end local v1    # "anythingVisible":Z
    :cond_26
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    goto :goto_15
.end method

.method private applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "darkIntensity"    # F
    .param p2, "lightIcon"    # Landroid/view/View;
    .param p3, "darkIcon"    # Landroid/view/View;

    .prologue
    .line 785
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 786
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 787
    return-void
.end method

.method private applyIconTint()V
    .locals 5

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 766
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    .line 767
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    .line 765
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    .line 769
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    .line 770
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    .line 768
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    .line 771
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIn:Landroid/widget/ImageView;

    .line 772
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIn:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    .line 771
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 773
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityOut:Landroid/widget/ImageView;

    .line 774
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityOut:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    .line 773
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 775
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiEpdg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiEpdg:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 777
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v1

    .line 778
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    .line 776
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    .line 779
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIconTint(IFLandroid/graphics/Rect;)V

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_0
    return-void
.end method

.method private currentVpnIconId(Z)I
    .locals 1
    .param p1, "isBranded"    # Z

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_1

    .line 796
    if-eqz p1, :cond_0

    const v0, 0x7f0803eb

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080459

    goto :goto_0

    .line 798
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f08030d

    :goto_1
    return v0

    :cond_2
    const v0, 0x7f080331

    goto :goto_1
.end method

.method private static getColorAttr(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 744
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 745
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 746
    .local v0, "colorAccent":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 747
    return v0
.end method

.method private getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 480
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 481
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 482
    return-object v0

    .line 485
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    const-string/jumbo v2, "SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v2, 0x0

    return-object v2
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v4, 0x0

    .line 467
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 468
    .local v0, "N":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 469
    return v4

    .line 471
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 473
    return v4

    .line 471
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 490
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V

    .line 491
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    return-object v0
.end method

.method private maybeScaleVpnAndNoSimsIcons()V
    .locals 4

    .prologue
    .line 248
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    .line 255
    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    .line 257
    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    return-void
.end method

.method private setBadgedWifiIconForView(Landroid/widget/ImageView;II)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "wifiPieId"    # I
    .param p3, "badgeId"    # I

    .prologue
    .line 731
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 732
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 733
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 731
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 737
    .local v0, "icon":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0401e4

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 739
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setScaledIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 740
    return-void
.end method

.method private setIconForView(Landroid/widget/ImageView;I)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "iconId"    # I

    .prologue
    .line 710
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 712
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setScaledIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 713
    return-void
.end method

.method private setScaledIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 716
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 717
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "tint"    # I

    .prologue
    .line 790
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 791
    return-void
.end method

.method private updateActivityEnabled()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    .line 322
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 516
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 518
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 522
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 524
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 262
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 263
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 264
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    .line 266
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "state$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 267
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 272
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    .line 273
    .local v0, "endPadding":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v0, v6}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 275
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsSupportNewSpec:Z

    if-eqz v3, :cond_2

    .line 276
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalClusterViewScale:F

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 277
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalClusterViewScale:F

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 281
    :cond_2
    const-class v3, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tuner/TunerService;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "icon_blacklist"

    aput-object v5, v4, v6

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 285
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 286
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 287
    return-void

    .line 272
    .end local v0    # "endPadding":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "endPadding":I
    goto :goto_1
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "tintArea"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 752
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    if-ne p3, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 754
    :goto_0
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    .line 755
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    .line 756
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 757
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 760
    :cond_1
    return-void

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .local v0, "changed":Z
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 292
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 296
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 297
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const v1, 0x7f08042f

    .line 209
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 211
    const v0, 0x7f0a02ed

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 212
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    .line 213
    const v0, 0x7f0a00d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 214
    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    .line 215
    const v0, 0x7f0a02f5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 216
    const v0, 0x7f0a02fa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 217
    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    .line 218
    const v0, 0x7f0a02f7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIn:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f0a02f9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityOut:Landroid/widget/ImageView;

    .line 220
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 221
    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    .line 222
    const v0, 0x7f0a01d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    .line 223
    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    .line 224
    const v0, 0x7f0a02f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    .line 225
    const v0, 0x7f0a02fc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 226
    const v0, 0x7f0a01a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 228
    const v0, 0x7f0a02f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 231
    const v0, 0x7f0a02f6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiEpdg:Landroid/widget/ImageView;

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    :cond_0
    const v0, 0x7f0a027e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSignalMarginStartView:Landroid/view/View;

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->maybeScaleVpnAndNoSimsIcons()V

    .line 240
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 301
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 305
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 529
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 531
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    .line 541
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiBadgeId:I

    .line 545
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 546
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityIconId:I

    .line 551
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 552
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 553
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    goto :goto_0

    .line 558
    .end local v0    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 559
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    .line 563
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 564
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string/jumbo v5, "icon_blacklist"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    .line 190
    .local v2, "blockList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v5, "airplane"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    .local v0, "blockAirplane":Z
    const-string/jumbo v5, "mobile"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 192
    .local v3, "blockMobile":Z
    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 193
    .local v4, "blockWifi":Z
    const-string/jumbo v5, "ethernet"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 195
    .local v1, "blockEthernet":Z
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    if-ne v0, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-eq v3, v5, :cond_3

    .line 197
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    .line 198
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    .line 200
    if-nez v4, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mForceBlockWifi:Z

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    .line 202
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 203
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 205
    :cond_2
    return-void

    .line 196
    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-ne v1, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 200
    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 425
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 426
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    .line 427
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    .line 429
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 430
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .prologue
    .line 500
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 501
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 502
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 505
    return-void

    .line 500
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 510
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZLcom/android/systemui/moto/ExtendedMobileDataInfo;)V
    .locals 3
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "typeContentDescription"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "isWide"    # Z
    .param p10, "subId"    # I
    .param p11, "roaming"    # Z
    .param p12, "mobileDataInfo"    # Lcom/android/systemui/moto/ExtendedMobileDataInfo;

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-direct {p0, p10}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 374
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    if-nez v0, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set11(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 378
    iget v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 379
    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set9(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 380
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    invoke-static {v0, p7}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    if-eqz p3, :cond_4

    .end local p9    # "isWide":Z
    :goto_1
    invoke-static {v0, p9}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 383
    iput-boolean p11, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    .line 384
    if-eqz p5, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    :goto_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    .line 385
    if-eqz p6, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    :goto_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    .line 388
    if-eqz p12, :cond_7

    .line 389
    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomize:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set10(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 390
    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->roamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->roamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 392
    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->roamIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 394
    :cond_1
    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    if-eqz v1, :cond_2

    .line 395
    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 398
    iget-object v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-nez v1, :cond_2

    .line 399
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 403
    :cond_2
    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomize:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 404
    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->enableCustomize:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 407
    iget-boolean v1, p12, Lcom/android/systemui/moto/ExtendedMobileDataInfo;->showSeparatedSignalBars:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set12(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 420
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 421
    return-void

    .restart local p9    # "isWide":Z
    :cond_3
    move v1, v2

    .line 377
    goto :goto_0

    :cond_4
    move p9, v2

    .line 382
    goto :goto_1

    .end local p9    # "isWide":Z
    :cond_5
    move v1, v2

    .line 384
    goto :goto_2

    :cond_6
    move v1, v2

    .line 385
    goto :goto_3

    .line 411
    :cond_7
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set10(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 412
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 413
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 414
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 416
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set12(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    goto :goto_4
.end method

.method public setNoSims(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 435
    invoke-static {}, Lcom/android/systemui/moto/NetworkStateTracker;->shouldDifferSimError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    const v0, 0x7f080326

    .line 437
    .local v0, "simStatusId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getSimStates()Lcom/android/systemui/moto/SimStates;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/moto/SimStates;->isSimError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const v0, 0x7f08042a

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 441
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 444
    .end local v0    # "simStatusId":I
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    xor-int/lit8 v1, v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 446
    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 454
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 457
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 458
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 459
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    .line 464
    :cond_3
    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLcom/android/systemui/moto/ExtendedWifiInfo;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z
    .param p8, "wifiInfo"    # Lcom/android/systemui/moto/ExtendedWifiInfo;

    .prologue
    const/4 v1, 0x0

    .line 336
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconId:I

    .line 339
    if-eqz p8, :cond_1

    .line 340
    iget-object v0, p8, Lcom/android/systemui/moto/ExtendedWifiInfo;->activityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconId:I

    .line 341
    iget-boolean v0, p8, Lcom/android/systemui/moto/ExtendedWifiInfo;->epdgState:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiEpdgVisible:Z

    .line 347
    :goto_0
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 348
    iget v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 349
    iget v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->iconOverlay:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiBadgeId:I

    .line 350
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 351
    if-eqz p4, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiIn:Z

    .line 352
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mActivityEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiOut:Z

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 355
    return-void

    .line 343
    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityIconId:I

    .line 344
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiEpdgVisible:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 347
    goto :goto_1

    :cond_3
    move v0, v1

    .line 351
    goto :goto_2
.end method
