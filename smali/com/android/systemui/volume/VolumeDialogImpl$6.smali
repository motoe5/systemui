.class Lcom/android/systemui/volume/VolumeDialogImpl$6;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDragging:Z

.field private final mSliderHitRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field final synthetic val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    .line 426
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mDragging:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 428
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mDragging:Z

    .line 430
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mDragging:Z

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mSliderHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->val$row:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 433
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 435
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$6;->mDragging:Z

    .line 437
    :cond_2
    return v3

    .line 439
    :cond_3
    return v2
.end method
