.class public Lcom/android/systemui/qs/tiles/WorkModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WorkModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;"
    }
.end annotation


# instance fields
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

.field private final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 37
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080201

    .line 38
    const v2, 0x7f0801fe

    .line 37
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 40
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f0801ff

    .line 41
    const v2, 0x7f080200

    .line 40
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 39
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 47
    const-class v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 48
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.MANAGED_PROFILE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x101

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11041d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setWorkModeEnabled(Z)V

    .line 72
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 96
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11041d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 103
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    .line 106
    const v1, 0x7f1100cd

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 112
    :goto_1
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 113
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_2
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 114
    return-void

    .line 99
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->isWorkModeEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_0

    .line 108
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    .line 110
    const v1, 0x7f1100cc

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 113
    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasActiveProfile()Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onManagedProfileChanged()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->isWorkModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->refreshState(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public onManagedProfileRemoved()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->removeTile(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->addCallback(Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
