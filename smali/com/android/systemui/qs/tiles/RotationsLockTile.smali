.class public Lcom/android/systemui/qs/tiles/RotationsLockTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "RotationsLockTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/RotationsLockTile$1;,
        Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$OrientationState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$OrientationState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$OrientationState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$OrientationState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$OrientationState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mPortraitToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$OrientationState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mRotationsLockDetail:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/RotationsLockTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/RotationsLockTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/RotationsLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/RotationsLockTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/RotationsLockTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/RotationsLockTile;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const v4, 0x7f0801a5

    const v3, 0x7f0801a4

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 57
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f0801a6

    .line 58
    const v2, 0x7f0801a3

    .line 57
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 56
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mPortraitToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 60
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 59
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 65
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 64
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mPortraitToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 69
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f08012c

    .line 70
    const v2, 0x7f080129

    .line 69
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 68
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 72
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f08012a

    .line 73
    const v2, 0x7f08012b

    .line 72
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    .line 71
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 76
    new-instance v0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;-><init>(Lcom/android/systemui/qs/tiles/RotationsLockTile;Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mRotationsLockDetail:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    .line 214
    new-instance v0, Lcom/android/systemui/qs/tiles/RotationsLockTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationsLockTile$1;-><init>(Lcom/android/systemui/qs/tiles/RotationsLockTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 80
    const-class v0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 81
    return-void
.end method

.method private getAccessibilityString(I)Ljava/lang/String;
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_0

    .line 204
    const v0, 0x7f1100c3

    .line 206
    .local v0, "stringID":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 198
    .end local v0    # "stringID":I
    :pswitch_0
    const v0, 0x7f110402

    .line 199
    .restart local v0    # "stringID":I
    goto :goto_0

    .line 201
    .end local v0    # "stringID":I
    :pswitch_1
    const v0, 0x7f110403

    .line 202
    .restart local v0    # "stringID":I
    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->getAccessibilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mRotationsLockDetail:Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0x7b

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected handleClick()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v1, :cond_0

    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    .local v0, "newState":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    packed-switch v1, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(I)V

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->refreshState(Ljava/lang/Object;)V

    .line 130
    return-void

    .line 116
    :pswitch_0
    const/4 v0, 0x1

    .line 117
    goto :goto_0

    .line 119
    :pswitch_1
    const/4 v0, 0x2

    .line 120
    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v0, 0x0

    .line 123
    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleSecondaryClick()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->showDetail(Z)V

    .line 135
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$OrientationState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$OrientationState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v2, 0x7f110404

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v1, :cond_0

    return-void

    .line 147
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->dualTarget:Z

    .line 149
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    .local v0, "orientation":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    .line 152
    packed-switch v0, :pswitch_data_0

    .line 166
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->label:Ljava/lang/CharSequence;

    .line 167
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 169
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->getAccessibilityString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->contentDescription:Ljava/lang/CharSequence;

    .line 170
    return-void

    .line 149
    .end local v0    # "orientation":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;

    iget v0, v1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    .restart local v0    # "orientation":I
    goto :goto_0

    .line 154
    .end local p2    # "arg":Ljava/lang/Object;
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->label:Ljava/lang/CharSequence;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mLandscapeToAuto:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    .line 158
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mContext:Landroid/content/Context;

    const v2, 0x7f110403

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->label:Ljava/lang/CharSequence;

    .line 159
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mAutoToPortrait:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    .line 162
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mContext:Landroid/content/Context;

    const v2, 0x7f110402

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->label:Ljava/lang/CharSequence;

    .line 163
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mAutoToLandscape:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$OrientationState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$OrientationState;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;-><init>()V

    .line 86
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$OrientationState;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->getRotationLockOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/plugins/qs/QSTile$OrientationState;->value:I

    .line 87
    :cond_0
    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$OrientationState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addCallback(Ljava/lang/Object;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile;->mCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
