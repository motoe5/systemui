.class public Lcom/android/systemui/ChargingView;
.super Landroid/widget/ImageView;
.source "ChargingView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mCharging:Z

.field private mDark:Z

.field private mImageResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010119

    aput v3, v2, v4

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 48
    .local v1, "srcResId":I
    if-eqz v1, :cond_0

    .line 49
    iput v1, p0, Lcom/android/systemui/ChargingView;->mImageResource:I

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    .line 55
    return-void
.end method

.method private updateVisibility()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/ChargingView;->mCharging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ChargingView;->mDark:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/ChargingView;->setVisibility(I)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 60
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/ChargingView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/ChargingView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 62
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 74
    iput-boolean p3, p0, Lcom/android/systemui/ChargingView;->mCharging:Z

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    .line 76
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/systemui/ChargingView;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/ChargingView;->setImageResource(I)V

    .line 81
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/ChargingView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public setDark(Z)V
    .locals 0
    .param p1, "dark"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/ChargingView;->mDark:Z

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/ChargingView;->updateVisibility()V

    .line 86
    return-void
.end method
