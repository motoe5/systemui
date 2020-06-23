.class Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$6;
.super Ljava/lang/Object;
.source "CarrierLabelUpdateMonitor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->initialize()V
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
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$6;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDensityOrFontScaleChanged()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$6;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$6;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0702a4

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$6;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$6;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07024e

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 178
    :cond_1
    return-void
.end method
