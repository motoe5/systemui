.class public Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;
.super Ljava/lang/Object;
.source "CarrierLabelUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;,
        Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;,
        Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$3;,
        Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;,
        Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$ShortNameSettingChangedObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelGroup:Landroid/view/View;

.field private mCarrierLabelVisible:Z

.field private mCellBroadcastMessage:Landroid/widget/TextView;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private mHandler:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;

.field private mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mPanelCarrierLabelListener:Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;

.field private mPanelExpanded:Z

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mShortFormLabelListener:Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

.field private mShortNameAllowedByUser:Z

.field private mShortNameSettingChangedObserver:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$ShortNameSettingChangedObserver;

.field private mStatusBarLabelShortFormViewText:Landroid/widget/TextView;

.field private mViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabelGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCellBroadcastMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mShortFormLabelListener:Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mStatusBarLabelShortFormViewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mShortNameAllowedByUser:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->carrierLabelAllowedToShow()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->shouldShowShortFormLabel()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->getShortFormLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/util/SparseArray;Z)Ljava/util/Map;
    .locals 1
    .param p0, "msc"    # Landroid/util/SparseArray;
    .param p1, "isRtl"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->sortByDirection(Landroid/util/SparseArray;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabelVisible:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mPanelExpanded:Z

    .line 65
    new-instance v0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;-><init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;)V

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mHandler:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;

    .line 66
    iput-boolean v2, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mShortNameAllowedByUser:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisioned:Z

    .line 260
    new-instance v0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;-><init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mShortFormLabelListener:Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

    .line 304
    new-instance v0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;-><init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mPanelCarrierLabelListener:Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;

    .line 471
    new-instance v0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$3;-><init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V

    .line 470
    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 76
    return-void
.end method

.method private carrierLabelAllowedToShow()Z
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    .line 185
    .local v0, "state":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mPanelExpanded:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->sInstance:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-direct {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;-><init>()V

    sput-object v0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->sInstance:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->sInstance:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    return-object v0
.end method

.method private getShortFormLabel()Ljava/lang/String;
    .locals 9

    .prologue
    .line 375
    const-string/jumbo v5, ""

    .line 377
    .local v5, "shortNetworkName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileSignalControllers()Landroid/util/SparseArray;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRtl()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->sortByDirection(Landroid/util/SparseArray;Z)Ljava/util/Map;

    move-result-object v3

    .line 379
    .local v3, "msc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-object v5

    .line 380
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getNetworkSeparator()Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "networkNameSeparator":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 384
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 386
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-nez v0, :cond_3

    .line 383
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getMobileState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object v6

    .line 388
    .local v6, "state":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->shortFormLabel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 389
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 390
    iget-object v5, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->shortFormLabel:Ljava/lang/String;

    goto :goto_1

    .line 392
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->shortFormLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 396
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v6    # "state":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    :cond_5
    return-object v5
.end method

.method public static getShortFormNetworkName(Lcom/android/systemui/moto/NetworkConfig;ZZZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "config"    # Lcom/android/systemui/moto/NetworkConfig;
    .param p1, "isRoaming"    # Z
    .param p2, "allowed"    # Z
    .param p3, "showSpn"    # Z
    .param p4, "spn"    # Ljava/lang/String;
    .param p5, "showPlmn"    # Z
    .param p6, "plmn"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string/jumbo v1, ""

    .line 218
    .local v1, "networkNameShortForm":Ljava/lang/String;
    if-eqz p5, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 p5, v4, 0x1

    .line 219
    .end local p5    # "showPlmn":Z
    :goto_0
    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 p3, v4, 0x1

    .line 221
    .end local p3    # "showSpn":Z
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 222
    const v5, 0x10401d5

    .line 221
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "strEmergencyCall":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/systemui/moto/NetworkConfig;->networkNameShortFormSupported:Z

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    .line 224
    invoke-virtual {v3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    .local v0, "isEmergency":Z
    iget-object v4, p0, Lcom/android/systemui/moto/NetworkConfig;->networkNameDefault:Ljava/lang/String;

    invoke-virtual {v4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 226
    .local v2, "noService":Z
    iget-boolean v4, p0, Lcom/android/systemui/moto/NetworkConfig;->networkNameSpnHasPriority:Z

    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    .line 227
    xor-int/lit8 v4, p1, 0x1

    .line 226
    if-eqz v4, :cond_2

    .line 227
    xor-int/lit8 v4, v0, 0x1

    .line 226
    if-eqz v4, :cond_2

    .line 228
    move-object v1, p4

    .line 240
    .end local v0    # "isEmergency":Z
    .end local v2    # "noService":Z
    :goto_2
    return-object v1

    .line 218
    .end local v3    # "strEmergencyCall":Ljava/lang/String;
    .restart local p3    # "showSpn":Z
    .restart local p5    # "showPlmn":Z
    :cond_0
    const/4 p5, 0x0

    .local p5, "showPlmn":Z
    goto :goto_0

    .line 219
    .end local p5    # "showPlmn":Z
    :cond_1
    const/4 p3, 0x0

    .local p3, "showSpn":Z
    goto :goto_1

    .line 229
    .end local p3    # "showSpn":Z
    .restart local v0    # "isEmergency":Z
    .restart local v2    # "noService":Z
    .restart local v3    # "strEmergencyCall":Ljava/lang/String;
    :cond_2
    if-eqz p5, :cond_3

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_3

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_3

    .line 230
    move-object v1, p6

    goto :goto_2

    .line 231
    :cond_3
    if-eqz p3, :cond_4

    .line 232
    move-object v1, p4

    goto :goto_2

    .line 234
    :cond_4
    const-string/jumbo v1, ""

    goto :goto_2

    .line 237
    .end local v0    # "isEmergency":Z
    .end local v2    # "noService":Z
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_2
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 97
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabel:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabelGroup:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a01f5

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mStatusBarLabelShortFormViewText:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCellBroadcastMessage:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCellBroadcastMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCellBroadcastMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabelVisible:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->carrierLabelAllowedToShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    const/4 v0, 0x0

    .line 108
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mPanelCarrierLabelListener:Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCarrierLabel(Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mShortFormLabelListener:Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addLabelShortFormView(Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mStatusBarLabelShortFormViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mStatusBarLabelShortFormViewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_2
    new-instance v0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$ShortNameSettingChangedObserver;

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mHandler:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;

    iget-object v2, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$ShortNameSettingChangedObserver;-><init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mShortNameSettingChangedObserver:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$ShortNameSettingChangedObserver;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mShortNameSettingChangedObserver:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$ShortNameSettingChangedObserver;

    invoke-virtual {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$ShortNameSettingChangedObserver;->register()V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mShortNameSettingChangedObserver:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$ShortNameSettingChangedObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$ShortNameSettingChangedObserver;->onChange(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$4;-><init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setExpansionListener(Lcom/android/systemui/moto/NetworkStateTracker$PanelExpansionListener;)V

    .line 151
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisioned:Z

    .line 157
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    new-instance v1, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$5;-><init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 169
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v1, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$6;-><init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 181
    return-void

    .line 109
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private shouldShowShortFormLabel()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mShortNameAllowedByUser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isShortFormLabelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mDeviceProvisioned:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sortByDirection(Landroid/util/SparseArray;Z)Ljava/util/Map;
    .locals 8
    .param p1, "isRtl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "msc":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 404
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 405
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 410
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MobileSignalController;>;>;"
    new-instance v6, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$7;

    invoke-direct {v6, p1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$7;-><init>(Z)V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 419
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 420
    .local v5, "sortedMsc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 421
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 423
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    :cond_1
    return-object v5
.end method

.method private updateShortFormLabel()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mStatusBarLabelShortFormViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mStatusBarLabelShortFormViewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->shouldShowShortFormLabel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mStatusBarLabelShortFormViewText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :cond_2
    return-void
.end method


# virtual methods
.method public getCellBroadcastEnabled(ZZZ)Z
    .locals 0
    .param p1, "preexistingCellBroadcastEnabled"    # Z
    .param p2, "hasMobileDataFeature"    # Z
    .param p3, "currentCellEnabled"    # Z

    .prologue
    .line 448
    if-nez p2, :cond_0

    .line 449
    return p1

    .line 451
    :cond_0
    if-nez p1, :cond_1

    .end local p3    # "currentCellEnabled":Z
    :goto_0
    return p3

    .restart local p3    # "currentCellEnabled":Z
    :cond_1
    const/4 p3, 0x1

    goto :goto_0
.end method

.method public getCellBroadcastMessage(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "preexistingCellBroadcastMessage"    # Ljava/lang/String;
    .param p2, "hasMobileDataFeature"    # Z
    .param p3, "currentCellMessage"    # Ljava/lang/String;
    .param p4, "networkNameSeparator"    # Ljava/lang/String;

    .prologue
    .line 432
    if-nez p2, :cond_0

    .line 433
    return-object p1

    .line 435
    :cond_0
    move-object v0, p3

    .line 437
    .local v0, "mobileCellBroadcastMessage":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 442
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public panelExpansionChanged(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mPanelExpanded:Z

    if-eq v0, p1, :cond_0

    .line 190
    iput-boolean p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mPanelExpanded:Z

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->updateCarrierLabelVisibility(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "statusBarWindowView"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p3, "viewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .param p4, "panelView"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p5, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 89
    iput-object p2, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 90
    iput-object p4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 91
    iput-object p5, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 92
    iput-object p3, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->initialize()V

    .line 94
    return-void
.end method

.method public updateCarrierLabelVisibility(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->updateShortFormLabel()V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabel:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mNc:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v1

    if-nez v1, :cond_5

    .line 200
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->carrierLabelAllowedToShow()Z

    move-result v0

    .line 202
    :goto_0
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabelVisible:Z

    if-eq v1, v0, :cond_3

    .line 203
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabelVisible:Z

    .line 204
    if-eqz v0, :cond_8

    .line 205
    iget-object v4, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->carrierLabelAllowedToShow()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCellBroadcastMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCellBroadcastMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_3

    .line 207
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCellBroadcastMessage:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->carrierLabelAllowedToShow()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :cond_3
    :goto_3
    return-void

    .line 200
    :cond_4
    const/4 v0, 0x1

    .local v0, "makeVisible":Z
    goto :goto_0

    .line 199
    .end local v0    # "makeVisible":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "makeVisible":Z
    goto :goto_0

    .end local v0    # "makeVisible":Z
    :cond_6
    move v1, v3

    .line 205
    goto :goto_1

    :cond_7
    move v2, v3

    .line 207
    goto :goto_2

    .line 210
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
