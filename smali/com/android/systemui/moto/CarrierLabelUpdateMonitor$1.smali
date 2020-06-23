.class Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;
.super Ljava/lang/Object;
.source "CarrierLabelUpdateMonitor.java"

# interfaces
.implements Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;


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
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public updateLabel()V
    .locals 3

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-wrap2(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-wrap1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    .end local v0    # "label":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 271
    .restart local v0    # "label":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$1;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get7(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
