.class public Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "LightBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mDockedLight:Z

.field private mDockedStackVisibility:I

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mFullscreenLight:Z

.field private mFullscreenStackVisibility:I

.field private mHasLightNavigationBar:Z

.field private final mLastDockedBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenBounds:Landroid/graphics/Rect;

.field private mLastNavigationBarMode:I

.field private mLastStatusBarMode:I

.field private mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mNavigationLight:Z

.field private mScrimAlpha:F

.field private mScrimAlphaBelowThreshold:Z

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mSystemUiVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 70
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    .line 71
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method private animateChange()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-nez v3, :cond_0

    .line 158
    return v2

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    .line 161
    .local v0, "unlockMode":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 162
    if-eq v0, v1, :cond_1

    .line 161
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 162
    goto :goto_0

    :cond_2
    move v1, v2

    .line 161
    goto :goto_0
.end method

.method private isLight(III)Z
    .locals 5
    .param p1, "vis"    # I
    .param p2, "barMode"    # I
    .param p3, "flag"    # I

    .prologue
    const/4 v3, 0x0

    .line 149
    const/4 v4, 0x4

    if-eq p2, v4, :cond_0

    .line 150
    const/4 v4, 0x6

    if-ne p2, v4, :cond_1

    const/4 v1, 0x1

    .line 151
    .local v1, "isTransparentBar":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v4

    xor-int/lit8 v0, v4, 0x1

    .line 152
    :goto_1
    and-int v4, p1, p3

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 153
    .local v2, "light":Z
    :goto_2
    if-eqz v0, :cond_4

    .end local v2    # "light":Z
    :goto_3
    return v2

    .line 149
    .end local v1    # "isTransparentBar":Z
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "isTransparentBar":Z
    goto :goto_0

    .line 150
    .end local v1    # "isTransparentBar":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isTransparentBar":Z
    goto :goto_0

    .line 151
    :cond_2
    const/4 v0, 0x0

    .local v0, "allowLight":Z
    goto :goto_1

    .line 152
    .end local v0    # "allowLight":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "light":Z
    goto :goto_2

    :cond_4
    move v2, v3

    .line 153
    goto :goto_3
.end method

.method private reevaluate()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 132
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 133
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 134
    iget v7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    move-object v0, p0

    .line 132
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    .line 135
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 136
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    .line 135
    invoke-virtual {p0, v0, v3, v6, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    .line 137
    return-void
.end method

.method private updateNavigation()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 198
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v2

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 200
    :cond_0
    return-void
.end method

.method private updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p2, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 166
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    .line 170
    .local v1, "hasDockedStack":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_2

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 193
    :goto_0
    return-void

    .line 178
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_5

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_5

    .line 179
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    const/4 v4, 0x0

    .line 179
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_0

    .line 185
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_6

    move-object v0, p1

    .line 186
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 191
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_0

    .line 185
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_6
    move-object v0, p2

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 189
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    goto :goto_2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 214
    const-string/jumbo v0, "LightBarController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, " mSystemUiVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v0, " mFullscreenStackVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v0, " mDockedStackVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v0, " mFullscreenLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 223
    const-string/jumbo v0, " mDockedLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 225
    const-string/jumbo v0, " mLastFullscreenBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 226
    const-string/jumbo v0, " mLastDockedBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 228
    const-string/jumbo v0, " mNavigationLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 229
    const-string/jumbo v0, " mHasLightNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 231
    const-string/jumbo v0, " mLastStatusBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 232
    const-string/jumbo v0, " mLastNavigationBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 234
    const-string/jumbo v0, " mScrimAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 235
    const-string/jumbo v0, " mScrimAlphaBelowThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 236
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 237
    const-string/jumbo v0, " StatusBarTransitionsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 240
    const-string/jumbo v0, " NavigationBarTransitionsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 243
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 205
    return-void
.end method

.method public onNavigationVisibilityChanged(IIZI)V
    .locals 7
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "nbModeChanged"    # Z
    .param p4, "navigationBarMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 114
    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 115
    .local v3, "oldVis":I
    not-int v5, p2

    and-int/2addr v5, v3

    and-int v6, p1, p2

    or-int v2, v5, v6

    .line 116
    .local v2, "newVis":I
    xor-int v0, v2, v3

    .line 117
    .local v0, "diffVis":I
    and-int/lit8 v5, v0, 0x10

    if-nez v5, :cond_0

    if-eqz p3, :cond_2

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 121
    .local v1, "last":Z
    const/16 v5, 0x10

    .line 120
    invoke-direct {p0, p1, p4, v5}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 122
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v5, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 123
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eq v4, v1, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 127
    .end local v1    # "last":Z
    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 128
    iput p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    .line 129
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 210
    return-void
.end method

.method public onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 8
    .param p1, "fullscreenStackVis"    # I
    .param p2, "dockedStackVis"    # I
    .param p3, "mask"    # I
    .param p4, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p5, "dockedStackBounds"    # Landroid/graphics/Rect;
    .param p6, "sbModeChanged"    # Z
    .param p7, "statusBarMode"    # I

    .prologue
    .line 87
    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 88
    .local v5, "oldFullscreen":I
    not-int v6, p3

    and-int/2addr v6, v5

    and-int v7, p1, p3

    or-int v3, v6, v7

    .line 89
    .local v3, "newFullscreen":I
    xor-int v1, v3, v5

    .line 90
    .local v1, "diffFullscreen":I
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 91
    .local v4, "oldDocked":I
    not-int v6, p3

    and-int/2addr v6, v4

    and-int v7, p2, p3

    or-int v2, v6, v7

    .line 92
    .local v2, "newDocked":I
    xor-int v0, v2, v4

    .line 93
    .local v0, "diffDocked":I
    and-int/lit16 v6, v1, 0x2000

    if-nez v6, :cond_0

    .line 94
    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_2

    .line 100
    :cond_0
    :goto_0
    const/16 v6, 0x2000

    .line 99
    invoke-direct {p0, v3, p7, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    .line 101
    const/16 v6, 0x2000

    invoke-direct {p0, v2, p7, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    .line 102
    invoke-direct {p0, p4, p5}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 105
    :cond_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 106
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 107
    iput p7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    .line 108
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 109
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    return-void

    .line 93
    :cond_2
    if-nez p6, :cond_0

    .line 96
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 93
    if-nez v6, :cond_0

    .line 97
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 93
    if-eqz v6, :cond_1

    goto :goto_0
.end method

.method public setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p1, "fingerprintUnlockController"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 82
    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 0
    .param p1, "navigationBar"    # Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 77
    return-void
.end method

.method public setScrimAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 140
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    .line 142
    .local v0, "belowThresholdBefore":Z
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    .line 143
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    if-eq v0, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 146
    :cond_0
    return-void

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
