.class Lcom/android/systemui/volume/VolumeDialogImpl$7;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field final synthetic val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 448
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v6, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v6, v6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x7

    invoke-static {v4, v6, v5}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 449
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v5, v5, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 450
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    if-ne v4, v7, :cond_5

    .line 451
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v4}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    .line 452
    .local v0, "hasVibrator":Z
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v4, v7, :cond_4

    .line 453
    if-eqz v0, :cond_1

    .line 454
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v4, v8, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 471
    .end local v0    # "hasVibrator":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    .line 472
    return-void

    .line 456
    .restart local v0    # "hasVibrator":Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .line 457
    .local v2, "wasZero":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    .line 458
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 457
    :cond_2
    invoke-interface {v4, v5, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 456
    .end local v2    # "wasZero":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "wasZero":Z
    goto :goto_1

    .line 461
    .end local v2    # "wasZero":Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v4, v7, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 462
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    invoke-interface {v3, v4, v8}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 467
    .end local v0    # "hasVibrator":Z
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne v3, v4, :cond_6

    const/4 v1, 0x1

    .line 468
    .local v1, "vmute":Z
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v4, v3, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$stream:I

    .line 469
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 468
    :goto_3
    invoke-interface {v4, v5, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 467
    .end local v1    # "vmute":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "vmute":Z
    goto :goto_2

    .line 469
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    goto :goto_3
.end method
