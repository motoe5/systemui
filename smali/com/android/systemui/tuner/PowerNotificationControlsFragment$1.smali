.class Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;
.super Ljava/lang/Object;
.source "PowerNotificationControlsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

.field final synthetic val$switchText:Landroid/widget/TextView;

.field final synthetic val$switchWidget:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;Landroid/widget/Switch;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    iput-object p2, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchWidget:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchText:Landroid/widget/TextView;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    invoke-static {v1}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->-wrap0(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 62
    .local v0, "newState":Z
    iget-object v1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    const/16 v2, 0x189

    .line 62
    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 65
    const-string/jumbo v3, "show_importance_slider"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 64
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    iget-object v1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchWidget:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 67
    iget-object v2, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->val$switchText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    const v3, 0x7f1104b1

    invoke-virtual {v1, v3}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;->this$0:Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    const v3, 0x7f1104b0

    invoke-virtual {v1, v3}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
