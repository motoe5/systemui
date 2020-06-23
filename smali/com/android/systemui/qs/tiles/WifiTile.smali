.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;,
        Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field static CHATTY:Z

.field private static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field protected final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

.field private final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

.field private mTetherAndWifiHelper:Lcom/android/settingslib/TetherAndWifiHelper;

.field private final mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSHost;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->showWarningDialogIfNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 70
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    .line 76
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    .line 79
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 80
    new-instance v0, Lcom/android/settingslib/TetherAndWifiHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/TetherAndWifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mTetherAndWifiHelper:Lcom/android/settingslib/TetherAndWifiHelper;

    .line 81
    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 287
    if-nez p0, :cond_0

    return-object v1

    .line 288
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 289
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 290
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 292
    :cond_1
    return-object p0
.end method

.method private showWarningDialogIfNeeded()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 506
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mTetherAndWifiHelper:Lcom/android/settingslib/TetherAndWifiHelper;

    invoke-virtual {v2}, Lcom/android/settingslib/TetherAndWifiHelper;->isTetheringOrHotspotActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 512
    .local v1, "warningDialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mot_do_not_show_wifi_warning"

    invoke-static {v2, v3}, Lcom/android/settingslib/TetherAndWifiHelper;->getDoNotShowWarning(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 514
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/TetherAndWifiHelper;->disableAllActiveHotspots(Landroid/content/Context;)V

    .line 553
    .end local v1    # "warningDialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    :cond_0
    return v4

    .line 516
    .restart local v1    # "warningDialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v3, 0x10406f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mTetherAndWifiHelper:Lcom/android/settingslib/TetherAndWifiHelper;

    invoke-virtual {v2}, Lcom/android/settingslib/TetherAndWifiHelper;->getWarningMessage()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 521
    new-instance v2, Lcom/android/systemui/qs/tiles/WifiTile$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    .line 520
    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 538
    new-instance v2, Lcom/android/systemui/qs/tiles/WifiTile$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiTile$3;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    .line 537
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 544
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setCanceledOnTouchOutside(Z)V

    .line 545
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d002b

    .line 546
    const/4 v4, 0x0

    .line 545
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setView(Landroid/view/View;)V

    .line 547
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 548
    return v5
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    new-instance v0, Lcom/android/systemui/qs/SignalTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "view":Lcom/android/systemui/qs/SignalTileView;
    invoke-virtual {v0}, Lcom/android/systemui/qs/SignalTileView;->adjustWiFiActivityLayout()V

    .line 121
    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 264
    const/16 v0, 0x7e

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110418

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getMetricsCategory()I

    move-result v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 137
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, "warningDialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mTetherAndWifiHelper:Lcom/android/settingslib/TetherAndWifiHelper;

    invoke-virtual {v2}, Lcom/android/settingslib/TetherAndWifiHelper;->isTetheringOrHotspotActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mot_do_not_show_wifi_warning"

    invoke-static {v2, v3}, Lcom/android/settingslib/TetherAndWifiHelper;->getDoNotShowWarning(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 143
    const/4 v3, 0x1

    .line 142
    if-ne v2, v3, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 145
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 146
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/TetherAndWifiHelper;->disableAllActiveHotspots(Landroid/content/Context;)V

    .line 147
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v3, 0x10406f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mTetherAndWifiHelper:Lcom/android/settingslib/TetherAndWifiHelper;

    invoke-virtual {v2}, Lcom/android/settingslib/TetherAndWifiHelper;->getWarningMessage()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v2, Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 170
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setCanceledOnTouchOutside(Z)V

    .line 172
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d002b

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 184
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 177
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    .line 182
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    goto :goto_0
.end method

.method protected handleSecondaryClick()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->canConfigWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 189
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 191
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    .line 194
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 12
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const v10, 0x7f110418

    const/4 v7, 0x0

    .line 203
    sget-boolean v6, Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WifiTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleUpdateState arg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p2

    .line 204
    check-cast v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 205
    .local v0, "cb":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    if-nez v0, :cond_1

    .line 206
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v0, v6, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 209
    :cond_1
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v6, :cond_4

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    .line 210
    .local v4, "wifiConnected":Z
    :goto_0
    iget v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v6, :cond_5

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v6, :cond_5

    const/4 v5, 0x1

    .line 211
    .local v5, "wifiNotConnected":Z
    :goto_1
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    iget-boolean v8, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eq v6, v8, :cond_6

    const/4 v1, 0x1

    .line 212
    .local v1, "enabledChanging":Z
    :goto_2
    if-eqz v1, :cond_2

    .line 213
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    iget-boolean v8, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {v6, v8}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    .line 214
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/WifiTile;->fireToggleStateChanged(Z)V

    .line 216
    :cond_2
    iput-boolean v11, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dualTarget:Z

    .line 217
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    .line 218
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_7

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    :goto_3
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 219
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v6, :cond_8

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    :goto_4
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 220
    iput v7, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    .line 221
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 222
    .local v2, "minimalContentDescription":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 223
    .local v3, "r":Landroid/content/res/Resources;
    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    if-eqz v6, :cond_9

    .line 224
    const v6, 0x7f0801fd

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 225
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    .line 241
    :goto_5
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 240
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 241
    const-string/jumbo v8, ","

    .line 240
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-eqz v6, :cond_3

    .line 243
    if-eqz v4, :cond_3

    .line 244
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    .line 251
    iput v7, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityWideIconId:I

    .line 252
    iput v7, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->simStatusIconId:I

    .line 253
    iput v7, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->roamingIconId:I

    .line 256
    new-array v6, v11, [Ljava/lang/Object;

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const v7, 0x7f1100c1

    .line 256
    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 258
    const-class v6, Landroid/widget/Switch;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 259
    const/4 v6, 0x2

    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    .line 260
    return-void

    .line 209
    .end local v1    # "enabledChanging":Z
    .end local v2    # "minimalContentDescription":Ljava/lang/StringBuffer;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "wifiConnected":Z
    .end local v5    # "wifiNotConnected":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "wifiConnected":Z
    goto/16 :goto_0

    .line 210
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "wifiNotConnected":Z
    goto/16 :goto_1

    .line 211
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "enabledChanging":Z
    goto/16 :goto_2

    :cond_7
    move v6, v7

    .line 218
    goto/16 :goto_3

    :cond_8
    move v6, v7

    .line 219
    goto/16 :goto_4

    .line 226
    .restart local v2    # "minimalContentDescription":Ljava/lang/StringBuffer;
    .restart local v3    # "r":Landroid/content/res/Resources;
    :cond_9
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-nez v6, :cond_a

    .line 227
    const v6, 0x7f0801e0

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 228
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    goto :goto_5

    .line 229
    :cond_a
    if-eqz v4, :cond_b

    .line 230
    iget v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 231
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    .line 232
    iget v6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiActivityIconId:I

    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    goto/16 :goto_5

    .line 233
    :cond_b
    if-eqz v5, :cond_c

    .line 234
    const v6, 0x7f0801e1

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 235
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 237
    :cond_c
    const v6, 0x7f0801e7

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 238
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    goto/16 :goto_5
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 201
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiController:Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;->removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
