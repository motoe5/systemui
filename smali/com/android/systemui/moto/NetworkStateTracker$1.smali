.class Lcom/android/systemui/moto/NetworkStateTracker$1;
.super Ljava/lang/Object;
.source "NetworkStateTracker.java"

# interfaces
.implements Lcom/android/systemui/moto/NetworkStateTracker$EriSoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/NetworkStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/moto/NetworkStateTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/moto/NetworkStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/moto/NetworkStateTracker;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/moto/NetworkStateTracker$1;->this$0:Lcom/android/systemui/moto/NetworkStateTracker;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public playEriSoundAfterBoot()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker$1;->this$0:Lcom/android/systemui/moto/NetworkStateTracker;

    invoke-static {v0}, Lcom/android/systemui/moto/NetworkStateTracker;->-get0(Lcom/android/systemui/moto/NetworkStateTracker;)Lcom/android/systemui/moto/VzwEri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/moto/VzwEri;->playEriAlertAfterBoot()V

    .line 263
    return-void
.end method

.method public updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "newServiceState"    # Landroid/telephony/ServiceState;
    .param p2, "preServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/moto/NetworkStateTracker$1;->this$0:Lcom/android/systemui/moto/NetworkStateTracker;

    invoke-static {v0}, Lcom/android/systemui/moto/NetworkStateTracker;->-get0(Lcom/android/systemui/moto/NetworkStateTracker;)Lcom/android/systemui/moto/VzwEri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/NetworkStateTracker$1;->this$0:Lcom/android/systemui/moto/NetworkStateTracker;

    invoke-static {v1}, Lcom/android/systemui/moto/NetworkStateTracker;->-get2(Lcom/android/systemui/moto/NetworkStateTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/moto/NetworkStateTracker$1;->this$0:Lcom/android/systemui/moto/NetworkStateTracker;

    invoke-static {v2}, Lcom/android/systemui/moto/NetworkStateTracker;->-get1(Lcom/android/systemui/moto/NetworkStateTracker;)Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/systemui/moto/VzwEri;->updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V

    .line 268
    return-void
.end method
