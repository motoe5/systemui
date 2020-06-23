.class public Lcom/android/systemui/qs/tiles/DataSaverTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DataSaverTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;"
    }
.end annotation


# instance fields
.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/DataSaverTile;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DataSaverTile;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->toggleDataSaver()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 46
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 47
    return-void
.end method

.method private handleUpdateStateUnavailable(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)Z
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .prologue
    const v5, 0x7f0800d5

    const/4 v4, 0x0

    .line 141
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->dataSaverUnavailable()Z

    move-result v2

    if-nez v2, :cond_0

    return v4

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v3, 0x7f11019d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 143
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 144
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 146
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 147
    .local v0, "disabledColor":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 148
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 149
    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v2, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 150
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 151
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 152
    const/16 v5, 0x12

    .line 150
    invoke-virtual {v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 153
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    .line 154
    const v3, 0x7f110057

    .line 153
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 155
    const/4 v2, 0x1

    return v2
.end method

.method private toggleDataSaver()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 97
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->setDataSaverEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->refreshState(Ljava/lang/Object;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x11c

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11019d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 71
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->dataSaverUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QsDataSaverDialogShown"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->toggleDataSaver()V

    .line 76
    return-void

    .line 79
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "dialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x1040172

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 81
    const v1, 0x1040170

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 83
    new-instance v1, Lcom/android/systemui/qs/tiles/DataSaverTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DataSaverTile$1;-><init>(Lcom/android/systemui/qs/tiles/DataSaverTile;)V

    .line 82
    const v2, 0x1040171

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 89
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 90
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QsDataSaverDialogShown"

    invoke-static {v1, v2, v4}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DataSaverTile;->handleUpdateStateUnavailable(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 112
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11019d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 114
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 115
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0800d4

    :goto_2
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 117
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 118
    return-void

    .line 111
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v0

    goto :goto_0

    .line 112
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 116
    :cond_3
    const v0, 0x7f0800d5

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataSaverTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onDataSaverChanged(Z)V
    .locals 1
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->refreshState(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addCallback(Ljava/lang/Object;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
