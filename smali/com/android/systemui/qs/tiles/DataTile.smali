.class public Lcom/android/systemui/qs/tiles/DataTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DataTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;,
        Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;,
        Lcom/android/systemui/qs/tiles/DataTile$DataItem;,
        Lcom/android/systemui/qs/tiles/DataTile$DataTileState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CELLULAR_SETTINGS:Landroid/content/Intent;

.field public static final CELLULAR_SIM_SETTINGS:Landroid/content/Intent;

.field public static final DEBUG:Z


# instance fields
.field public final CELLULAR_SUB_ID:Ljava/lang/String;

.field private final DEFAULT_DATA_DISCONNECTED_ICON_ID:I

.field private final DEFAULT_DATA_ICON_GRAY_ID:I

.field private final DEFAULT_DATA_ICON_ID:I

.field private final DEFAULT_DATA_ICON_NO_INET_ID:I

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataItems:[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

.field mDetailAdapter:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

.field private mNoSim:Z

.field private final mSignalCallback:Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

.field protected final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mWiFiConnected:Z


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/DataTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/DataTile;)[Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataItems:[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/DataTile;)Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/DataTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mWiFiConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/DataTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mNoSim:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/DataTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mWiFiConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/DataTile;I)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;
    .param p1, "dataConnectionState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DataTile;->getConnectionStatus(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/DataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/DataTile;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataTile;
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DataTile;->resetDataState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "DataTile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/qs/tiles/DataTile;->DEBUG:Z

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DataTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$SimSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DataTile;->CELLULAR_SIM_SETTINGS:Landroid/content/Intent;

    .line 40
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const v5, 0x7f0800da

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 44
    const-string/jumbo v2, "subscription"

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->CELLULAR_SUB_ID:Ljava/lang/String;

    .line 45
    iput v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->DEFAULT_DATA_ICON_ID:I

    .line 46
    const v2, 0x7f0800d7

    iput v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->DEFAULT_DATA_DISCONNECTED_ICON_ID:I

    .line 48
    const v2, 0x7f0800d8

    iput v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->DEFAULT_DATA_ICON_GRAY_ID:I

    .line 49
    const v2, 0x7f0800d9

    iput v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->DEFAULT_DATA_ICON_NO_INET_ID:I

    .line 67
    new-instance v2, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/DataTile;Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    .line 68
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/DataTile;->mWiFiConnected:Z

    .line 69
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/DataTile;->mNoSim:Z

    .line 73
    const-class v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 74
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 75
    new-instance v2, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DataTile;Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    .line 76
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 77
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataItems:[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    if-nez v2, :cond_0

    .line 78
    sget v1, Lcom/android/systemui/moto/NetworkStateTracker;->sPhoneCount:I

    .line 79
    .local v1, "phoneCount":I
    new-array v2, v1, [Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataItems:[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataItems:[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    new-instance v3, Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    invoke-direct {v3}, Lcom/android/systemui/qs/tiles/DataTile$DataItem;-><init>()V

    aput-object v3, v2, v0

    .line 82
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataItems:[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    aget-object v2, v2, v0

    iput v5, v2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->dataTypeIconId:I

    .line 83
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataItems:[Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    aget-object v2, v2, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->tag:Ljava/lang/Object;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    .end local v1    # "phoneCount":I
    :cond_0
    return-void
.end method

.method private getConnectionStatus(I)Ljava/lang/String;
    .locals 2
    .param p1, "dataConnectionState"    # I

    .prologue
    .line 507
    const v0, 0x7f1103d9

    .line 508
    .local v0, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 528
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mWiFiConnected:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;

    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/DataTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 528
    if-eqz v1, :cond_1

    .line 530
    :cond_0
    const v0, 0x7f1103db

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 511
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasInternetConnection()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mWiFiConnected:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 512
    const v0, 0x7f1103d6

    goto :goto_0

    :cond_2
    const v0, 0x7f1103d5

    goto :goto_0

    .line 516
    :pswitch_1
    const v0, 0x7f1103d9

    .line 517
    goto :goto_0

    .line 519
    :pswitch_2
    const v0, 0x7f1103d7

    .line 520
    goto :goto_0

    .line 522
    :pswitch_3
    const v0, 0x7f1103dc

    .line 523
    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private resetDataState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 185
    const v0, 0x7f0800d7

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lcom/android/systemui/qs/tiles/DataTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    const-string/jumbo v1, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    sget-object v0, Lcom/android/systemui/qs/tiles/DataTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x6bd1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 99
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/settingslib/CarrierSubsidyUtils;->isDataSelectionAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 113
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 116
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mNoSim:Z

    if-nez v0, :cond_2

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DataTile;->showDetail(Z)V

    .line 126
    :cond_2
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 147
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    .line 149
    instance-of v5, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v5, :cond_3

    move-object v0, p2

    .line 150
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 151
    .local v0, "dataState":Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-boolean v6, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v5, v6, :cond_2

    const/4 v2, 0x1

    .line 152
    .local v2, "enabledChanging":Z
    :goto_0
    iget-boolean v5, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 153
    iget-object v5, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 154
    iget-object v5, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 155
    const/4 v5, 0x0

    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->autoMirrorDrawable:Z

    .line 156
    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 158
    if-eqz v2, :cond_0

    .line 159
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/DataTile;->fireToggleStateChanged(Z)V

    .line 178
    .end local v0    # "dataState":Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .end local v2    # "enabledChanging":Z
    :cond_0
    :goto_1
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    :cond_1
    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 179
    return-void

    .line 151
    .restart local v0    # "dataState":Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "enabledChanging":Z
    goto :goto_0

    .line 163
    .end local v0    # "dataState":Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .end local v2    # "enabledChanging":Z
    :cond_3
    if-nez p2, :cond_5

    .line 164
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 165
    .local v1, "dataSubId":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 166
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 168
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;)V

    .line 169
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DataTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p1}, Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;->-wrap1(Lcom/android/systemui/qs/tiles/DataTile$DataDetailAdapter;Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    goto :goto_1

    .line 172
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DataTile;->resetDataState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    goto :goto_1

    .line 176
    .end local v1    # "dataSubId":I
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DataTile;->resetDataState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)V

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isSimReadyForSlotId(Landroid/telephony/SubscriptionManager;I)Z
    .locals 2
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "slotId"    # I

    .prologue
    .line 555
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimReadyForSubId(Landroid/telephony/SubscriptionManager;I)Z
    .locals 2
    .param p1, "sm"    # Landroid/telephony/SubscriptionManager;
    .param p2, "subId"    # I

    .prologue
    .line 550
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 551
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    .line 552
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/tiles/DataTile;->isSimReadyForSlotId(Landroid/telephony/SubscriptionManager;I)Z

    move-result v1

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataTile$CellSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method
