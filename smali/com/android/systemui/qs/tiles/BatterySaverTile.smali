.class public Lcom/android/systemui/qs/tiles/BatterySaverTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "BatterySaverTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

.field private mCharging:Z

.field private mDetailShown:Z

.field private mLevel:I

.field private mPluggedIn:Z

.field private mPowerSave:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDetailShown:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Lcom/android/systemui/qs/QSHost;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/BatterySaverTile;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mLevel:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BatterySaverTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/BatterySaverTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDetailShown:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 53
    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;-><init>(Lcom/android/systemui/qs/tiles/BatterySaverTile;Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 64
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x105

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110113

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSaveMode(Z)V

    .line 101
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 112
    const v0, 0x7f0801aa

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110113

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 114
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 116
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 117
    return-void

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 121
    iput p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mLevel:I

    .line 122
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPluggedIn:Z

    .line 123
    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->refreshState(Ljava/lang/Object;)V

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDetailShown:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->-wrap2(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->refreshState(Ljava/lang/Object;)V

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDetailShown:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->-wrap2(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    .line 137
    :cond_0
    return-void
.end method

.method public setDetailListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setDetailListening(Z)V

    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->-set0(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;Landroid/view/View;)Landroid/view/View;

    .line 91
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
