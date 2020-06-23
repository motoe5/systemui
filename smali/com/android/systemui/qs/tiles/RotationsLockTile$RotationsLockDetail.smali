.class final Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;
.super Ljava/lang/Object;
.source "RotationsLockTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RotationsLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotationsLockDetail"
.end annotation


# instance fields
.field private mCurrentView:Landroid/widget/RadioGroup;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/RotationsLockTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/RotationsLockTile;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/RotationsLockTile;Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/RotationsLockTile;
    .param p2, "-this1"    # Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;-><init>(Lcom/android/systemui/qs/tiles/RotationsLockTile;)V

    return-void
.end method

.method private colorRadioBtnDrawable(IIILandroid/content/Context;)Landroid/widget/RadioButton;
    .locals 5
    .param p1, "radioId"    # I
    .param p2, "drawableId"    # I
    .param p3, "colorId"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->mCurrentView:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 286
    .local v0, "radioBtn":Landroid/widget/RadioButton;
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 287
    .local v1, "radioIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 288
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 287
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 289
    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-object v0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const v8, 0x106000c

    .line 236
    if-nez p2, :cond_0

    .line 237
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->-get0(Lcom/android/systemui/qs/tiles/RotationsLockTile;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d00fb

    .line 238
    const/4 v7, 0x0

    .line 237
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 240
    :cond_0
    check-cast p2, Landroid/widget/RadioGroup;

    .end local p2    # "convertView":Landroid/view/View;
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->mCurrentView:Landroid/widget/RadioGroup;

    .line 243
    const v5, 0x7f0a0234

    .line 244
    const v6, 0x7f08030c

    .line 243
    invoke-direct {p0, v5, v6, v8, p1}, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->colorRadioBtnDrawable(IIILandroid/content/Context;)Landroid/widget/RadioButton;

    move-result-object v0

    .line 245
    .local v0, "autoRadioBtn":Landroid/widget/RadioButton;
    const v5, 0x7f0a0236

    .line 246
    const v6, 0x7f08032b

    .line 245
    invoke-direct {p0, v5, v6, v8, p1}, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->colorRadioBtnDrawable(IIILandroid/content/Context;)Landroid/widget/RadioButton;

    move-result-object v3

    .line 247
    .local v3, "portraitRadioBtn":Landroid/widget/RadioButton;
    const v5, 0x7f0a0235

    .line 248
    const v6, 0x7f08032a

    .line 247
    invoke-direct {p0, v5, v6, v8, p1}, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->colorRadioBtnDrawable(IIILandroid/content/Context;)Landroid/widget/RadioButton;

    move-result-object v2

    .line 250
    .local v2, "landscapeRadioBtn":Landroid/widget/RadioButton;
    move-object v4, v0

    .line 251
    .local v4, "selected":Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->-get1(Lcom/android/systemui/qs/tiles/RotationsLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/RotationLockController;->getRotationLockOrientation()I

    move-result v1

    .line 252
    .local v1, "currentRotationsLock":I
    if-ne v1, v9, :cond_2

    .line 253
    move-object v4, v3

    .line 258
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->mCurrentView:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v10}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 260
    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 261
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->mCurrentView:Landroid/widget/RadioGroup;

    new-instance v6, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail$1;-><init>(Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 279
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->mCurrentView:Landroid/widget/RadioGroup;

    return-object v5

    .line 254
    :cond_2
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 255
    move-object v4, v2

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 296
    const/16 v0, 0x7b

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationsLockTile$RotationsLockDetail;->this$0:Lcom/android/systemui/qs/tiles/RotationsLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationsLockTile;->-get0(Lcom/android/systemui/qs/tiles/RotationsLockTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110408

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 318
    return-void
.end method

.method public setToggleState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 308
    return-void
.end method

.method public showDetailDoneButton()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method
