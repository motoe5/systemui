.class Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$3;
.super Ljava/lang/Object;
.source "CarrierLabelUpdateMonitor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$3;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$3;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$3;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get4(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-set0(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;Z)Z

    .line 475
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$3;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get6(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;->updateLabel()V

    .line 476
    return-void
.end method
