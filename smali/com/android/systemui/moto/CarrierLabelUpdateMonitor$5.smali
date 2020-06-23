.class Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$5;
.super Ljava/lang/Object;
.source "CarrierLabelUpdateMonitor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


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
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$5;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$5;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$5;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$5;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    :cond_0
    return-void
.end method
