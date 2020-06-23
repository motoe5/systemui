.class public abstract Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.super Ljava/lang/Object;
.source "QSTileImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;,
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;,
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;,
        Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/qs/QSTile;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnnounceNextStateChange:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected final mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<TTState;>.H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui/qs/QSHost;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mShowingDetail:Z

.field protected mState:Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private mTileSpec:Ljava/lang/String;

.field private mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field protected final mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleAddCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRemoveCallbacks()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "Tile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 59
    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    .line 93
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 65
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    .line 68
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 95
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method public static getColorForState(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 340
    packed-switch p1, :pswitch_data_0

    .line 349
    const-string/jumbo v0, "QSTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x0

    return v0

    .line 343
    :pswitch_0
    const v0, 0x1010030

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    .line 342
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 345
    :pswitch_1
    const v0, 0x101009a

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 347
    :pswitch_2
    const v0, 0x1010036

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleAddCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .prologue
    .line 229
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 231
    return-void
.end method

.method private handleRemoveCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .prologue
    .line 234
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method private handleRemoveCallbacks()V
    .locals 1

    .prologue
    .line 238
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 308
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onScanStateChanged(Z)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method private handleShowDetail(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 291
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onShowDetail(Z)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method private handleStateChanged()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v4, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->shouldAnnouncementBeDelayed()Z

    move-result v1

    .line 268
    .local v1, "delayAnnouncement":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-interface {v3, v5}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    if-eqz v3, :cond_1

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "announcement":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 275
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v3, v0}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    .line 279
    .end local v0    # "announcement":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    if-eqz v3, :cond_2

    .end local v1    # "delayAnnouncement":Z
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mAnnounceNextStateChange:Z

    .line 280
    return-void

    .restart local v1    # "delayAnnouncement":Z
    :cond_2
    move v1, v4

    .line 279
    goto :goto_1
.end method

.method private handleToggleStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 302
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .prologue
    .line 152
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    return-void
.end method

.method protected checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "userRestriction"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 326
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 325
    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 327
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 328
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 327
    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 330
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    .line 333
    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0
.end method

.method public clearState()V
    .locals 2

    .prologue
    .line 199
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 200
    return-void
.end method

.method public click()V
    .locals 3

    .prologue
    .line 164
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 166
    return-void
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 215
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 216
    return-void
.end method

.method public fireScanStateChanged(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    return-void

    :cond_0
    move v0, v1

    .line 211
    goto :goto_0
.end method

.method public fireToggleStateChanged(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v1, 0x0

    .line 207
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 208
    return-void

    :cond_0
    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLongClickIntent()Landroid/content/Intent;
.end method

.method public abstract getMetricsCategory()I
.end method

.method public getState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method public abstract getTileLabel()Ljava/lang/CharSequence;
.end method

.method public getTileSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    return-object v0
.end method

.method protected handleClearState()V
    .locals 1

    .prologue
    .line 254
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 256
    return-void
.end method

.method protected abstract handleClick()V
.end method

.method protected handleDestroy()V
    .locals 1

    .prologue
    .line 320
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 322
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 247
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 247
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 249
    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 259
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v0

    .line 261
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStateChanged()V

    .line 264
    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .prologue
    .line 243
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    .line 244
    return-void
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTState;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 314
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected isShowingDetail()Z
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    return v0
.end method

.method public longClick()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v3, 0x4

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x16e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 176
    return-void
.end method

.method public abstract newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "logMaker"    # Landroid/metrics/LogMaker;

    .prologue
    .line 179
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    instance-of v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3a0

    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSHost;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39f

    .line 182
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshState()V
    .locals 1

    .prologue
    .line 191
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 195
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .prologue
    .line 156
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    return-void
.end method

.method public removeCallbacks()V
    .locals 2

    .prologue
    .line 160
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 161
    return-void
.end method

.method public secondaryClick()V
    .locals 3

    .prologue
    .line 169
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x39e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method

.method public setDetailListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 224
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    return-void
.end method

.method public setListening(Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "listening"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    if-eqz p2, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 105
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setListening true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 110
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setListening false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {v0, v4, v2, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected abstract setListening(Z)V
.end method

.method public setTileSpec(Ljava/lang/String;)V
    .locals 0
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 121
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 122
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    .prologue
    .line 283
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public showDetail(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    return-void

    :cond_0
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method public userSwitch(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 203
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void
.end method
