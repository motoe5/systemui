.class public Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;
.super Ljava/lang/Object;
.source "AllBgDataRestrictionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllBgDataRestricted:Z

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;

.field private final mStateObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->onStateChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mAllBgDataRestricted:Z

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mContext:Landroid/content/Context;

    .line 32
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 33
    .local v0, "unavailabilityAllowed":Z
    if-eqz v0, :cond_0

    .line 34
    new-instance v2, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$1;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$1;-><init>(Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mStateObserver:Landroid/database/ContentObserver;

    .line 41
    const-string/jumbo v2, "restrict_all_background_data"

    .line 40
    invoke-static {v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 42
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->getAllBgDataRestrictedState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mAllBgDataRestricted:Z

    .line 47
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mStateObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method private getAllBgDataRestrictedState()Z
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "restrict_all_background_data"

    .line 70
    invoke-static {v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "restrict":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private onStateChanged()V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->getAllBgDataRestrictedState()Z

    move-result v0

    .line 63
    .local v0, "pcoRestricted":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mAllBgDataRestricted:Z

    if-eq v0, v1, :cond_0

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mAllBgDataRestricted:Z

    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mListener:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mListener:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mAllBgDataRestricted:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;->onAllBgDataRestrictionChanged(Z)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public isRestricted()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mAllBgDataRestricted:Z

    return v0
.end method

.method public registerListener(Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->mListener:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;

    .line 51
    return-void
.end method
