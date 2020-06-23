.class public Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack$DockState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState$1;
    }
.end annotation


# static fields
.field private static final HINT_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final dockAreaAlpha:I

.field public final dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

.field public final hintTextAlpha:I

.field public final hintTextOrientation:I

.field private mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

.field private mHintText:Ljava/lang/String;

.field private mHintTextAlpha:I

.field private mHintTextBounds:Landroid/graphics/Point;

.field private mHintTextPaint:Landroid/text/TextPaint;

.field private mHintTextResId:I

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .prologue
    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 317
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState$1;

    const-string/jumbo v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState$1;-><init>(Ljava/lang/String;)V

    .line 316
    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    .line 315
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 3
    .param p1, "areaAlpha"    # I
    .param p2, "hintAlpha"    # I
    .param p3, "hintOrientation"    # I
    .param p4, "hintTextResId"    # I

    .prologue
    const/4 v1, -0x1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    .line 351
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    .line 357
    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 358
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_0

    .line 359
    const/high16 v0, -0x1000000

    .line 358
    :goto_0
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 360
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 361
    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .line 362
    iput p3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextOrientation:I

    .line 363
    iput p4, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextResId:I

    .line 366
    new-instance v0, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/text/TextPaint;

    .line 371
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 372
    return-void

    :cond_0
    move v0, v1

    .line 359
    goto :goto_0
.end method

.method synthetic constructor <init>(IIIILcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)V
    .locals 0
    .param p1, "areaAlpha"    # I
    .param p2, "hintAlpha"    # I
    .param p3, "hintOrientation"    # I
    .param p4, "hintTextResId"    # I
    .param p5, "-this4"    # Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 391
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    :cond_0
    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    if-lez v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 402
    .local v8, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 403
    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextOrientation:I

    if-ne v1, v7, :cond_2

    .line 404
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 405
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 404
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 406
    .local v0, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 407
    iget v1, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 408
    iget v2, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 407
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    :goto_0
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 433
    .end local v0    # "layout":Landroid/text/StaticLayout;
    .end local v8    # "bounds":Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 410
    .restart local v8    # "bounds":Landroid/graphics/Rect;
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 411
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 410
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 412
    .restart local v0    # "layout":Landroid/text/StaticLayout;
    iget v1, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public setHintTextId(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 494
    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextResId:I

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->update(Landroid/content/Context;)V

    .line 496
    return-void
.end method

.method public startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "areaAlpha"    # I
    .param p3, "hintAlpha"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "animateAlpha"    # Z
    .param p7, "animateBounds"    # Z

    .prologue
    .line 440
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 441
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 445
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 447
    if-eqz p6, :cond_5

    .line 448
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 449
    sget-object v4, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 448
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 449
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    aput p2, v5, v6

    .line 448
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 450
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 451
    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 452
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    if-eq v3, p3, :cond_2

    .line 458
    if-eqz p6, :cond_7

    .line 459
    sget-object v3, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget v5, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 460
    const/4 v5, 0x1

    aput p3, v4, v5

    .line 459
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 461
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 462
    iget v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    if-le p3, v3, :cond_6

    .line 463
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 462
    :goto_1
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 472
    if-eqz p7, :cond_8

    .line 474
    sget-object v3, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    sget-object v4, Lcom/android/systemui/recents/misc/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 473
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/Rect;

    .line 475
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 473
    invoke-static {v3, v4, v5}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 476
    .local v2, "prop":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 477
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 478
    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 479
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "prop":Landroid/animation/PropertyValuesHolder;
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 485
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    .line 486
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 487
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 489
    :cond_4
    return-void

    .line 454
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 464
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 467
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    iput p3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextAlpha:I

    .line 468
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    goto :goto_2

    .line 481
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public update(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 379
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextResId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/text/TextPaint;

    .line 381
    const v2, 0x7f07024f

    .line 380
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 382
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 383
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 384
    return-void
.end method
