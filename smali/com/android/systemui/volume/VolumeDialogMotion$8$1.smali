.class Lcom/android/systemui/volume/VolumeDialogMotion$8$1;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion$8;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogMotion$8;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion$8;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/volume/VolumeDialogMotion$8;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$8$1;->this$1:Lcom/android/systemui/volume/VolumeDialogMotion$8;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$8$1;->val$onComplete:Ljava/lang/Runnable;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$8$1;->this$1:Lcom/android/systemui/volume/VolumeDialogMotion$8;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogMotion$8;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get7(Lcom/android/systemui/volume/VolumeDialogMotion;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$8$1;->this$1:Lcom/android/systemui/volume/VolumeDialogMotion$8;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogMotion$8;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get4(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$8$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 250
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$8$1;->this$1:Lcom/android/systemui/volume/VolumeDialogMotion$8;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogMotion$8;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->-wrap1(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V

    .line 251
    return-void

    .line 247
    :cond_2
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mDialog showing again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
