.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$1;,
        Lcom/android/systemui/qs/tiles/HotspotTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;",
        ">;"
    }
.end annotation


# static fields
.field static final TETHER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private final mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mDisableNoAnimation:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mListening:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimLoaded:Z

.field private final mUnavailable:Lcom/android/systemui/plugins/qs/QSTile$Icon;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimLoaded:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->IsAnySimLoaded(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 57
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.TetherSettings"

    .line 56
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const v3, 0x7f080116

    const v2, 0x7f080114

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 59
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080117

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 58
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 61
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 63
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080115

    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 62
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 65
    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisableNoAnimation:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 66
    const v0, 0x7f08011a

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnavailable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 69
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimLoaded:Z

    .line 77
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    const-class v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 96
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->IsAnySimLoaded(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimLoaded:Z

    .line 105
    return-void
.end method

.method private IsAnySimLoaded(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string/jumbo v1, "phone"

    .line 86
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 89
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->value:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 248
    const/16 v0, 0x78

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1103f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 151
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->value:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 156
    .local v0, "isEnabled":Z
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimLoaded:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 157
    :cond_1
    return-void

    .line 159
    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, "warningDialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 161
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 162
    xor-int/lit8 v3, v0, 0x1

    .line 161
    if-eqz v3, :cond_4

    .line 162
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 161
    if-eqz v3, :cond_4

    .line 165
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "mot_do_not_show_hs_warning"

    invoke-static {v3, v4}, Lcom/android/settingslib/TetherAndWifiHelper;->getDoNotShowWarning(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 166
    const/4 v4, 0x1

    .line 165
    if-ne v3, v4, :cond_3

    .line 167
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    xor-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 168
    return-void

    .line 171
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v4, 0x10406f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    .line 173
    const v4, 0x10406f3

    .line 172
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Z)V

    const v4, 0x104000a

    invoke-virtual {v1, v4, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 187
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 188
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setCanceledOnTouchOutside(Z)V

    .line 189
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d002b

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setView(Landroid/view/View;)V

    .line 191
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    xor-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 115
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;Ljava/lang/Object;)V
    .locals 9
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 205
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v6, 0x7f1103f2

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->label:Ljava/lang/CharSequence;

    .line 207
    const-string/jumbo v3, "no_config_tethering"

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 208
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 209
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->value:Z

    .line 214
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 215
    const v6, 0x7f05004f

    .line 214
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 218
    .local v1, "skipTransientAnimation":Z
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->value:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_1
    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 224
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isAirplaneModeOrNoSim:Z

    .line 225
    .local v2, "wasAirplaneOrNoSim":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSimLoaded:Z

    xor-int/lit8 v3, v3, 0x1

    :goto_2
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isAirplaneModeOrNoSim:Z

    .line 226
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v3

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isTransient:Z

    .line 228
    if-nez v1, :cond_7

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isTransient:Z

    if-eqz v3, :cond_7

    .line 229
    const v3, 0x7f080119

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 240
    :cond_0
    :goto_3
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 241
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->label:Ljava/lang/CharSequence;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->contentDescription:Ljava/lang/CharSequence;

    .line 242
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isAirplaneModeOrNoSim:Z

    if-eqz v3, :cond_9

    move v4, v5

    :cond_1
    :goto_4
    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->state:I

    .line 244
    return-void

    .line 211
    .end local v1    # "skipTransientAnimation":Z
    .end local v2    # "wasAirplaneOrNoSim":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v3

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->value:Z

    goto :goto_0

    .line 219
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "skipTransientAnimation":Z
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_1

    .line 220
    :cond_4
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isTransient:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    .line 221
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_1

    .restart local v2    # "wasAirplaneOrNoSim":Z
    :cond_6
    move v3, v4

    .line 225
    goto :goto_2

    .line 230
    :cond_7
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isAirplaneModeOrNoSim:Z

    if-eqz v3, :cond_8

    .line 231
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0600af

    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 232
    .local v0, "disabledColor":I
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->label:Ljava/lang/CharSequence;

    .line 233
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 234
    const/16 v8, 0x12

    .line 232
    invoke-virtual {v3, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->label:Ljava/lang/CharSequence;

    .line 235
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnavailable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    .line 236
    .end local v0    # "disabledColor":I
    :cond_8
    if-eqz v2, :cond_0

    .line 237
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisableNoAnimation:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    .line 243
    :cond_9
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->value:Z

    if-nez v3, :cond_a

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;->isTransient:Z

    if-eqz v3, :cond_1

    :cond_a
    const/4 v4, 0x2

    goto :goto_4
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 203
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneOrNoSimBooleanStat;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 126
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 127
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 128
    if-eqz p1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    .line 141
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 142
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
