.class Lcom/android/systemui/doze/DozeHostService$1;
.super Lcom/android/systemui/doze/IDozeHost$Stub;
.source "DozeHostService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeHostService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeHostService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeHostService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/doze/IDozeHost$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public abortPulsing()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "abortPulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public addCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostCallback;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "adding callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method public dozeTimeTick()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dozeTimeTick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public extendPulse()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "extendPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public isNotificationLightOn()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isNotificationLightOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isNotificationLightOn()Z

    move-result v0

    return v0
.end method

.method public isPowerSaveActive()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isPowerSaveActive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    return v0
.end method

.method public isPulsingBlocked()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isPulsingBlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeHostService$1_1663(Lcom/android/systemui/doze/IDozeHostCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostCallback;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeHostService$1_2057(Lcom/android/systemui/doze/IDozeHostCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostCallback;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeHostService$1_2419()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->startDozing()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeHostService$1_2841(Lcom/android/systemui/doze/IDozeHostPulseCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostPulseCallback;
    .param p2, "reason"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/IDozeHostPulseCallback;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeHostService$1_3211()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeHostService$1_3561()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->extendPulse()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeHostService$1_3914()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeHostService$1_4268()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->abortPulsing()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeHostService$1_4670(Z)V
    .locals 1
    .param p1, "animateWakeup"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    return-void
.end method

.method public pulseWhileDozing(Lcom/android/systemui/doze/IDozeHostPulseCallback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostPulseCallback;
    .param p2, "reason"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pulseWhileDozing reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$7;

    invoke-direct {v1, p2, p0, p1}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/doze/IDozeHostCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/doze/IDozeHostCallback;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "removing callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method public setAnimateWakeup(Z)V
    .locals 3
    .param p1, "animateWakeup"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimateWakeup - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$8;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$8;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method public startDozing()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDozeHostMediator is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService$1;->this$0:Lcom/android/systemui/doze/DozeHostService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeHostService;->-get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$Lambda$FGGct6LCnwZWdtMIK3S3P55aHxA$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method
