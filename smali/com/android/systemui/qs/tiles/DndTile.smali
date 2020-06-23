.class public Lcom/android/systemui/qs/tiles/DndTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DndTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DndTile$1;,
        Lcom/android/systemui/qs/tiles/DndTile$2;,
        Lcom/android/systemui/qs/tiles/DndTile$3;,
        Lcom/android/systemui/qs/tiles/DndTile$4;,
        Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
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
.field private static final DEBUG:Z

.field private static final TOTAL_SILENCE:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field private static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

.field private final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mDisableTotalSilence:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private final mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mShowingDetail:Z

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/DndTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/volume/ZenModePanel$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/DndTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mShowingDetail:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/DndTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qs/tiles/DndTile;->DEBUG:Z

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    .line 84
    const v0, 0x7f0801bd

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    .line 83
    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->TOTAL_SILENCE:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const v2, 0x7f0801bb

    .line 101
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 87
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f0800e2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 86
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 90
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f0800e5

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 89
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDisableTotalSilence:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 266
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$1;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    .line 265
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 284
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$2;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 305
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$3;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 432
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$4;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 102
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 103
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.android.systemui.dndtile.SET_VISIBLE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    .line 106
    return-void
.end method

.method public static isCombinedIcon(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const-string/jumbo v0, "DndTileCombinedIcon"

    .line 131
    const/4 v1, 0x0

    .line 130
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVisible(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-string/jumbo v0, "DndTileVisible"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setCombinedIcon(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "combined"    # Z

    .prologue
    .line 126
    const-string/jumbo v0, "DndTileCombinedIcon"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

.method public static setVisible(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "visible"    # Z

    .prologue
    .line 118
    const-string/jumbo v0, "DndTileVisible"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 119
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 234
    const/16 v0, 0x76

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1103ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 155
    const-string/jumbo v2, "ftm_fdn_dnd_turned_off"

    const/4 v3, 0x1

    const/4 v4, -0x2

    .line 154
    invoke-static {v1, v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 157
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string/jumbo v2, "DndTile"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v5, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DndFavoriteZen"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "zen":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string/jumbo v2, "DndTile"

    invoke-interface {v1, v0, v5, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    .line 115
    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isVolumeRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 170
    const v2, 0x10401d9

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/DndTile;->showDetail(Z)V

    .line 175
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 9
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v8, 0x7f0801bc

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 184
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 185
    .local v2, "zen":I
    :goto_0
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 186
    .local v0, "newValue":Z
    :goto_1
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v3, v0, :cond_4

    const/4 v1, 0x1

    .line 187
    .local v1, "valueChanged":Z
    :goto_2
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    .line 188
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 189
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    :goto_3
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 190
    const-string/jumbo v3, "no_adjust_volume"

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/qs/tiles/DndTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 192
    sget-boolean v3, Lcom/android/systemui/qs/tiles/DndTile;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 193
    const-string/jumbo v3, "DndTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleUpdateState() called with: state = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 194
    const-string/jumbo v6, "], arg = ["

    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 194
    const-string/jumbo v6, "], zen = ["

    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 194
    const-string/jumbo v6, "], newValue = ["

    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 195
    const-string/jumbo v6, "], valueChanged = ["

    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 195
    const-string/jumbo v6, "]"

    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 218
    sget-object v3, Lcom/android/systemui/qs/tiles/DndTile;->TOTAL_SILENCE:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v3, v5}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDisableTotalSilence:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_4
    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 219
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v5, 0x7f1103ed

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 220
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 221
    const v5, 0x7f1100a8

    .line 220
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 224
    :goto_5
    if-eqz v1, :cond_1

    .line 225
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/DndTile;->fireToggleStateChanged(Z)V

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f1100c1

    .line 227
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 229
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 230
    return-void

    .line 184
    .end local v0    # "newValue":Z
    .end local v1    # "valueChanged":Z
    .end local v2    # "zen":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v2

    .restart local v2    # "zen":I
    goto/16 :goto_0

    .line 185
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "newValue":Z
    goto/16 :goto_1

    .line 186
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "valueChanged":Z
    goto/16 :goto_2

    :cond_5
    move v3, v4

    .line 189
    goto/16 :goto_3

    .line 200
    :pswitch_0
    invoke-static {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 201
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v5, 0x7f1103ef

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 202
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 203
    const v5, 0x7f1100ae

    .line 202
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 206
    :pswitch_1
    sget-object v3, Lcom/android/systemui/qs/tiles/DndTile;->TOTAL_SILENCE:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 207
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v5, 0x7f1103ee

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 208
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 209
    const v5, 0x7f1100ac

    .line 208
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_5

    .line 212
    :pswitch_2
    invoke-static {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 213
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v5, 0x7f1103ec

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 214
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 215
    const v5, 0x7f1100a9

    .line 214
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 218
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto/16 :goto_4

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DndTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 249
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->refreshState()V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, v1}, Lcom/android/systemui/Prefs;->registerListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, v1}, Lcom/android/systemui/Prefs;->unregisterListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method
