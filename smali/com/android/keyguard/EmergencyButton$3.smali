.class Lcom/android/keyguard/EmergencyButton$3;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v1}, Lcom/android/keyguard/EmergencyButton;->-get1(Lcom/android/keyguard/EmergencyButton;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v1}, Lcom/android/keyguard/EmergencyButton;->-wrap1(Lcom/android/keyguard/EmergencyButton;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v1}, Lcom/android/keyguard/EmergencyButton;->-get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v1

    .line 135
    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v1}, Lcom/android/keyguard/EmergencyButton;->-get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 144
    return v3

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "EmergencyButton"

    const-string/jumbo v2, "Failed to stop app pinning"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v1}, Lcom/android/keyguard/EmergencyButton;->-get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 144
    return v3

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v1}, Lcom/android/keyguard/EmergencyButton;->-get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    .line 144
    return v3

    .line 148
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
