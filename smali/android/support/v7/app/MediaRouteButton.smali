.class public Landroid/support/v7/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAttachedToWindow:Z

.field private mButtonTint:Landroid/content/res/ColorStateList;

.field private final mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

.field private mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private final mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-array v0, v3, [I

    .line 104
    const v1, 0x10100a0

    aput v1, v0, v2

    .line 103
    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 108
    new-array v0, v3, [I

    .line 109
    const v1, 0x101009f

    aput v1, v0, v2

    .line 108
    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-static {p1, p3}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    sget-object v2, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 90
    invoke-static {}, Landroid/support/v7/app/MediaRouteDialogFactory;->getDefault()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 123
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 125
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 126
    new-instance v2, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteButton;)V

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    .line 129
    sget-object v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton:[I

    .line 128
    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_mediaRouteButtonTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    .line 132
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawableStatic:I

    .line 131
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 134
    .local v1, "value":Landroid/util/TypedValue;
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawable:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 135
    new-instance v2, Landroid/support/v7/app/MediaRouteButton$1;

    invoke-direct {v2, p0, v1}, Landroid/support/v7/app/MediaRouteButton$1;-><init>(Landroid/support/v7/app/MediaRouteButton;Landroid/util/TypedValue;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/MediaRouteButton$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minWidth:I

    .line 148
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    .line 151
    sget v2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minHeight:I

    .line 150
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    .line 152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->updateContentDescription()V

    .line 155
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteButton;->setClickable(Z)V

    .line 156
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 280
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 281
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 282
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 284
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 286
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 271
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 272
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    return-object v1

    .line 274
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateContentDescription()V
    .locals 2

    .prologue
    .line 512
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_0

    .line 513
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connecting:I

    .line 519
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 520
    return-void

    .line 514
    .end local v0    # "resId":I
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_1

    .line 515
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connected:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 517
    .end local v0    # "resId":I
    :cond_1
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_disconnected:I

    .restart local v0    # "resId":I
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 328
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    .line 330
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->invalidate()V

    .line 333
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 374
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 387
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 390
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 393
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 394
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 310
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 316
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_1

    .line 317
    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 318
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_0

    .line 319
    sget-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 399
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 403
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 404
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 453
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v5

    .line 455
    .local v5, "left":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 456
    .local v6, "right":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v7

    .line 457
    .local v7, "top":I
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 459
    .local v0, "bottom":I
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 460
    .local v4, "drawWidth":I
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 461
    .local v1, "drawHeight":I
    sub-int v8, v6, v5

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    add-int v2, v5, v8

    .line 462
    .local v2, "drawLeft":I
    sub-int v8, v0, v7

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    add-int v3, v7, v8

    .line 464
    .local v3, "drawTop":I
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 465
    add-int v9, v2, v4

    add-int v10, v3, v1

    .line 464
    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 466
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 468
    .end local v0    # "bottom":I
    .end local v1    # "drawHeight":I
    .end local v2    # "drawLeft":I
    .end local v3    # "drawTop":I
    .end local v4    # "drawWidth":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 408
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 409
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 410
    .local v2, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 411
    .local v6, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 413
    .local v1, "heightMode":I
    iget v10, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 414
    iget-object v8, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v11

    add-int/2addr v8, v11

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v11

    add-int/2addr v8, v11

    .line 413
    :goto_0
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 415
    .local v5, "width":I
    iget v8, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    iget-object v10, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    .line 416
    iget-object v9, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    .line 415
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 419
    .local v0, "height":I
    sparse-switch v6, :sswitch_data_0

    .line 428
    :sswitch_0
    move v4, v5

    .line 433
    .local v4, "measuredWidth":I
    :goto_1
    sparse-switch v1, :sswitch_data_1

    .line 442
    :sswitch_1
    move v3, v0

    .line 446
    .local v3, "measuredHeight":I
    :goto_2
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/MediaRouteButton;->setMeasuredDimension(II)V

    .line 447
    return-void

    .end local v0    # "height":I
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local v5    # "width":I
    :cond_1
    move v8, v9

    .line 414
    goto :goto_0

    .line 421
    .restart local v0    # "height":I
    .restart local v5    # "width":I
    :sswitch_2
    move v4, v7

    .line 422
    .restart local v4    # "measuredWidth":I
    goto :goto_1

    .line 424
    .end local v4    # "measuredWidth":I
    :sswitch_3
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .restart local v4    # "measuredWidth":I
    goto :goto_1

    .line 435
    :sswitch_4
    move v3, v2

    .line 436
    .restart local v3    # "measuredHeight":I
    goto :goto_2

    .line 438
    .end local v3    # "measuredHeight":I
    :sswitch_5
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "measuredHeight":I
    goto :goto_2

    .line 419
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 433
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 302
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 303
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->playSoundEffect(I)V

    .line 305
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->showDialog()Z

    move-result v1

    if-nez v1, :cond_1

    .end local v0    # "handled":Z
    :goto_0
    return v0

    .restart local v0    # "handled":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method refreshRoute()V
    .locals 8

    .prologue
    .line 471
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 472
    .local v4, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v4, v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v2

    .line 473
    :goto_0
    if-eqz v2, :cond_7

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v1

    .line 474
    :goto_1
    const/4 v3, 0x0

    .line 475
    .local v3, "needsRefresh":Z
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v5, v2, :cond_0

    .line 476
    iput-boolean v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    .line 477
    const/4 v3, 0x1

    .line 479
    :cond_0
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v5, v1, :cond_1

    .line 480
    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    .line 481
    const/4 v3, 0x1

    .line 484
    :cond_1
    if-eqz v3, :cond_2

    .line 485
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->updateContentDescription()V

    .line 486
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 488
    :cond_2
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_3

    .line 489
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 490
    const/4 v7, 0x1

    .line 489
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/media/MediaRouter;->isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v7/app/MediaRouteButton;->setEnabled(Z)V

    .line 492
    :cond_3
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 493
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 492
    if-eqz v5, :cond_5

    .line 494
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 495
    .local v0, "curDrawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_8

    .line 496
    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 497
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 508
    .end local v0    # "curDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    :goto_2
    return-void

    .line 472
    .end local v3    # "needsRefresh":Z
    :cond_6
    const/4 v2, 0x0

    .local v2, "isRemote":Z
    goto :goto_0

    .line 473
    .end local v2    # "isRemote":Z
    :cond_7
    const/4 v1, 0x0

    .local v1, "isConnecting":Z
    goto :goto_1

    .line 499
    .end local v1    # "isConnecting":Z
    .restart local v0    # "curDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v3    # "needsRefresh":Z
    :cond_8
    if-eqz v2, :cond_5

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_5

    .line 502
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 503
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 505
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    goto :goto_2
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 341
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 345
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 347
    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 348
    if-eqz p1, :cond_2

    .line 349
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 351
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 354
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 355
    return-void

    :cond_3
    move v0, v1

    .line 351
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 378
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 381
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 383
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 381
    goto :goto_0
.end method

.method public showDialog()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 238
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-nez v4, :cond_0

    .line 239
    return v6

    .line 242
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 243
    .local v2, "fm":Landroid/support/v4/app/FragmentManager;
    if-nez v2, :cond_1

    .line 244
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    :cond_1
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 248
    .local v3, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v3, v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 249
    :cond_2
    const-string/jumbo v4, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 250
    const-string/jumbo v4, "MediaRouteButton"

    const-string/jumbo v5, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v6

    .line 254
    :cond_3
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-virtual {v4}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateChooserDialogFragment()Landroid/support/v7/app/MediaRouteChooserDialogFragment;

    move-result-object v0

    .line 255
    .local v0, "f":Landroid/support/v7/app/MediaRouteChooserDialogFragment;
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 256
    const-string/jumbo v4, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 266
    .end local v0    # "f":Landroid/support/v7/app/MediaRouteChooserDialogFragment;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 258
    :cond_4
    const-string/jumbo v4, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 259
    const-string/jumbo v4, "MediaRouteButton"

    const-string/jumbo v5, "showDialog(): Route controller dialog already showing!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v6

    .line 263
    :cond_5
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    invoke-virtual {v4}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;

    move-result-object v1

    .line 264
    .local v1, "f":Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    const-string/jumbo v4, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 359
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
