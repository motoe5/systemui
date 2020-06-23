.class public Lcom/android/systemui/pip/phone/PipTouchState;
.super Ljava/lang/Object;
.source "PipTouchState.java"


# instance fields
.field private mActivePointerId:I

.field private mAllowDraggingOffscreen:Z

.field private mAllowTouches:Z

.field private final mDownDelta:Landroid/graphics/PointF;

.field private final mDownTouch:Landroid/graphics/PointF;

.field private mIsDragging:Z

.field private mIsUserInteracting:Z

.field private final mLastDelta:Landroid/graphics/PointF;

.field private final mLastTouch:Landroid/graphics/PointF;

.field private mStartedDragging:Z

.field private final mVelocity:Landroid/graphics/PointF;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/view/ViewConfiguration;)V
    .locals 2
    .param p1, "viewConfig"    # Landroid/view/ViewConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    .line 39
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    .line 40
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    .line 41
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 50
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 51
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 265
    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method public allowDraggingOffscreen()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PipTouchHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mAllowTouches="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mActivePointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mDownTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mDownDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLastTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLastDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mVelocity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsUserInteracting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStartedDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mAllowDraggingOffscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public getDownTouchPosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getLastTouchDelta()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getLastTouchPosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getVelocity()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    return v0
.end method

.method public isUserInteracting()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    if-nez v6, :cond_1

    .line 70
    return-void

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->initOrResetVelocityTracker()V

    .line 76
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    .line 78
    const-string/jumbo v6, "PipTouchHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Setting active pointer id on DOWN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 81
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v6, v7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 82
    iput-boolean v9, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 83
    iput-boolean v9, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    goto :goto_0

    .line 88
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v6, :cond_0

    .line 93
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 94
    iget v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 95
    .local v3, "pointerIndex":I
    if-ne v3, v11, :cond_2

    .line 96
    const-string/jumbo v6, "PipTouchHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid active pointer id on MOVE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 101
    .local v4, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 102
    .local v5, "y":F
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v7, v4, v7

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float v8, v5, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 103
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v7, v4, v7

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float v8, v5, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 105
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v6}, Landroid/graphics/PointF;->length()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    const/4 v0, 0x1

    .line 106
    .local v0, "hasMovedBeyondTap":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    if-nez v6, :cond_5

    .line 107
    if-eqz v0, :cond_3

    .line 108
    iput-boolean v9, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 109
    iput-boolean v9, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 114
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "hasMovedBeyondTap":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hasMovedBeyondTap":Z
    goto :goto_1

    .line 112
    :cond_5
    iput-boolean v10, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    goto :goto_2

    .line 119
    .end local v0    # "hasMovedBeyondTap":Z
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v6, :cond_0

    .line 124
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 127
    .restart local v3    # "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 128
    .local v2, "pointerId":I
    iget v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    if-ne v2, v6, :cond_0

    .line 130
    if-nez v3, :cond_6

    const/4 v1, 0x1

    .line 131
    .local v1, "newPointerIndex":I
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    .line 133
    const-string/jumbo v6, "PipTouchHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Relinquish active pointer id on POINTER_UP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 134
    iget v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    .line 133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 130
    .end local v1    # "newPointerIndex":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "newPointerIndex":I
    goto :goto_3

    .line 142
    .end local v1    # "newPointerIndex":I
    .end local v2    # "pointerId":I
    .end local v3    # "pointerIndex":I
    :pswitch_4
    iget-boolean v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v6, :cond_0

    .line 147
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 148
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 149
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    .line 148
    const/16 v8, 0x3e8

    invoke-virtual {v6, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 150
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 152
    iget v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 153
    .restart local v3    # "pointerIndex":I
    if-ne v3, v11, :cond_7

    .line 154
    const-string/jumbo v6, "PipTouchHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid active pointer id on UP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 163
    .end local v3    # "pointerIndex":I
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsDragging:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 61
    return-void
.end method

.method public setAllowTouches(Z)V
    .locals 1
    .param p1, "allowTouches"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    .line 238
    :cond_0
    return-void
.end method

.method public startedDragging()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchState;->mStartedDragging:Z

    return v0
.end method
