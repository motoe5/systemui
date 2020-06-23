.class public Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;
.super Ljava/lang/Object;
.source "DataSaverControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DataSaverController;
.implements Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mAllBgDataRestrictionMonitor:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mAllBgDataRestrictionMonitor:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;
    .param p1, "isDataSaving"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 39
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 41
    new-instance v0, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mAllBgDataRestrictionMonitor:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mAllBgDataRestrictionMonitor:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->registerListener(Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor$Listener;)V

    .line 44
    return-void
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .locals 3
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    .line 52
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V

    .line 62
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V

    return-void
.end method

.method public dataSaverUnavailable()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mAllBgDataRestrictionMonitor:Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->isRestricted()Z

    move-result v0

    return v0
.end method

.method public isDataSaverEnabled()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public onAllBgDataRestrictionChanged(Z)V
    .locals 3
    .param p1, "restricted"    # Z

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 71
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V

    return-void
.end method

.method public setDataSaverEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
