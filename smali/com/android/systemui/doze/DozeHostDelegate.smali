.class public Lcom/android/systemui/doze/DozeHostDelegate;
.super Ljava/lang/Object;
.source "DozeHostDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeHostDelegate$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDozeHostConnection:Landroid/content/ServiceConnection;

.field mService:Lcom/android/systemui/doze/IDozeHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/systemui/doze/DozeHostDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeHostDelegate$1;-><init>(Lcom/android/systemui/doze/DozeHostDelegate;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mDozeHostConnection:Landroid/content/ServiceConnection;

    .line 23
    iput-object p1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public abortPulsing()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v1, :cond_0

    .line 146
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "abortPulsing: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 152
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHost;->abortPulsing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostCallback;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v1, :cond_0

    .line 70
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "addCallback: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v1, p1}, Lcom/android/systemui/doze/IDozeHost;->addCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bindService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.doze.DozeHostService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    iget-object v2, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mDozeHostConnection:Landroid/content/ServiceConnection;

    .line 32
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 31
    invoke-virtual {p1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string/jumbo v2, "DozeHostDelegate"

    const-string/jumbo v3, "*** Doze host service started"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dozeTimeTick()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v1, :cond_0

    .line 161
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "dozeTimeTick: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 167
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHost;->dozeTimeTick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public extendPulse()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v1, :cond_0

    .line 176
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "extendPulse: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 182
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHost;->extendPulse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isPowerSaveActive()Z
    .locals 4

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 207
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v2, :cond_0

    .line 208
    const-string/jumbo v2, "DozeHostDelegate"

    const-string/jumbo v3, "isPowerSaveActive: mService is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v1

    .line 214
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v2}, Lcom/android/systemui/doze/IDozeHost;->isPowerSaveActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 215
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DozeHostDelegate"

    const-string/jumbo v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isPulsingBlocked()Z
    .locals 4

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 225
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v2, :cond_0

    .line 226
    const-string/jumbo v2, "DozeHostDelegate"

    const-string/jumbo v3, "isPulsingBlocked: mService is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v1

    .line 232
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v2}, Lcom/android/systemui/doze/IDozeHost;->isPulsingBlocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 233
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DozeHostDelegate"

    const-string/jumbo v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pulseWhileDozing(Lcom/android/systemui/doze/IDozeHostPulseCallback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostPulseCallback;
    .param p2, "reason"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v1, :cond_0

    .line 115
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "pulseWhileDozing: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 121
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/doze/IDozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/IDozeHostPulseCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostCallback;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v1, :cond_0

    .line 85
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "removeCallback: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v1, p1}, Lcom/android/systemui/doze/IDozeHost;->removeCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAnimateWakeup(Z)V
    .locals 3
    .param p1, "animateWakeup"    # Z

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v1, :cond_0

    .line 191
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "setAnimateWakeup: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 197
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v1, p1}, Lcom/android/systemui/doze/IDozeHost;->setAnimateWakeup(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startDozing()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v1, :cond_0

    .line 100
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "startDozing: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 106
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHost;->startDozing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopDozing()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-nez v1, :cond_0

    .line 131
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "stopDozing: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 137
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    invoke-interface {v1}, Lcom/android/systemui/doze/IDozeHost;->stopDozing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DozeHostDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostDelegate;->mDozeHostConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 44
    :cond_0
    return-void
.end method
