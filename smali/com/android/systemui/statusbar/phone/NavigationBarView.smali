.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$1;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/statusbar/phone/NavGesture;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private final mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentRotation:I

.field mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mDockedStackExists:Z

.field private mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

.field private mGlobalTouchListenerValue:I

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field private mHomeCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mInCarMode:Z

.field private mIsOLED:Z

.field private mLayoutTransitionsEnabled:Z

.field mLongClickableAccessibilityButton:Z

.field private mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field mNavigationIconHints:I

.field private mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mRecentsComponent:Lcom/android/systemui/RecentsComponent;

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowAccessibilityButton:Z

.field mShowMenu:Z

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field private mUseCarModeUi:Z

.field mVertical:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x7f0a010f

    const v4, 0x7f0a0046

    const v3, 0x7f0a000b

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 221
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 104
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 105
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 189
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    .line 286
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$H;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 583
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsOLED:Z

    .line 224
    const-string/jumbo v0, "window"

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 232
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 234
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0224

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f0a0224

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0199

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f0a0199

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a011d

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f0a011d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 244
    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    .line 243
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    return-void
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "button"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .prologue
    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    if-nez p2, :cond_0

    .line 867
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 874
    return-void

    .line 869
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 870
    const-string/jumbo v1, " alpha="

    .line 869
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 870
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v1

    .line 869
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1
    .param p1, "carMode"    # Z
    .param p2, "landscape"    # Z

    .prologue
    .line 404
    if-eqz p2, :cond_1

    .line 405
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 404
    :goto_0
    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    .line 406
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0
.end method

.method private getBackIconWithAlt(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1
    .param p1, "carMode"    # Z
    .param p2, "landscape"    # Z

    .prologue
    .line 398
    if-eqz p2, :cond_1

    .line 399
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 398
    :goto_0
    return-object v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    .line 400
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0
.end method

.method private getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "lightIcon"    # I
    .param p3, "darkIcon"    # I

    .prologue
    .line 371
    invoke-direct {p0, p1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2
    .param p1, "darkContext"    # Landroid/content/Context;
    .param p2, "lightContext"    # Landroid/content/Context;
    .param p3, "lightIcon"    # I
    .param p4, "darkIcon"    # I

    .prologue
    .line 376
    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 377
    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 376
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static getMicroScreenServiceIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 886
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 888
    .local v1, "serviceIntent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v2, "com.motorola.frameworks.singlehand"

    .line 889
    const-string/jumbo v3, "com.motorola.frameworks.singlehand.SingleHandService"

    .line 888
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const-string/jumbo v2, "com.motorola.frameworks.START_GLOBAL_SH_MODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    return-object v1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 895
    const/4 v2, 0x0

    return-object v2
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 768
    if-eqz p1, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 771
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "(unknown)"

    return-object v2

    .line 776
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string/jumbo v2, "(null)"

    return-object v2
.end method

.method private inLockTask()Z
    .locals 2

    .prologue
    .line 498
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 1
    .param p1, "newVertical"    # Z

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    .line 704
    :cond_0
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .param p1, "how"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 782
    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 5
    .param p1, "useFadingAnimations"    # Z

    .prologue
    const/4 v4, 0x0

    .line 536
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getNavBarFragmentViewVisiblity()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 540
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_1

    .line 541
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 542
    .local v1, "old":Z
    :goto_0
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 543
    const v3, 0x7f120007

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 549
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 550
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    .end local v1    # "old":Z
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void

    .line 541
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "old":Z
    goto :goto_0

    .line 544
    :cond_3
    if-eqz v1, :cond_4

    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_4

    .line 545
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    .line 547
    :cond_4
    return-void
.end method

.method public static stopMicroScreenService(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 900
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMicroScreenServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 901
    .local v0, "serviceIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 904
    :cond_0
    return-void
.end method

.method private updateCarMode(Landroid/content/res/Configuration;)Z
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 724
    const/4 v1, 0x0

    .line 725
    .local v1, "uiCarModeChanged":Z
    if-eqz p1, :cond_0

    .line 726
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v3, 0xf

    .line 727
    .local v2, "uiMode":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 729
    .local v0, "isCarMode":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    if-eq v0, v3, :cond_0

    .line 730
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    .line 731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCarMode(Z)V

    .line 738
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    .line 742
    .end local v0    # "isCarMode":Z
    .end local v2    # "uiMode":I
    :cond_0
    return v1

    .line 727
    .restart local v2    # "uiMode":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isCarMode":Z
    goto :goto_0
.end method

.method private updateCurrentView()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 620
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 621
    .local v2, "rot":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_0

    .line 622
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v5, v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 625
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 626
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 627
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 628
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v3, v4

    .line 626
    goto :goto_1

    .line 630
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 631
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    .line 634
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsOLED:Z

    if-eqz v3, :cond_3

    .line 635
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f0a01ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 636
    .local v1, "navButtons":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 637
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 641
    .end local v1    # "navButtons":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private updateGlobalTouchListenerStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 913
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 915
    const-string/jumbo v1, "global_touch_listener"

    .line 914
    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGlobalTouchListenerValue:I

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->stopMicroScreenService(Landroid/content/Context;)V

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 920
    const-string/jumbo v1, "global_touch_listener"

    .line 919
    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGlobalTouchListenerValue:I

    if-ne v0, v3, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 924
    const-string/jumbo v1, "global_touch_listener"

    .line 923
    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f08011b

    .line 336
    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iget v5, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    .line 337
    iget v4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v5, :cond_1

    .line 339
    :cond_0
    const v4, 0x7f08020f

    const v5, 0x7f080210

    .line 338
    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 341
    :cond_1
    iget v4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v5, :cond_2

    .line 342
    const v4, 0x7f080208

    const v5, 0x7f08020a

    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 343
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 345
    const v4, 0x7f08020b

    const v5, 0x7f08020d

    .line 344
    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 346
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 349
    const v4, 0x7f080211

    const v5, 0x7f080213

    .line 348
    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 351
    const v4, 0x7f080219

    const v5, 0x7f08021a

    .line 350
    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 352
    const v4, 0x7f080217

    const v5, 0x7f080218

    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 353
    const v4, 0x7f080206

    .line 354
    const v5, 0x7f080207

    .line 353
    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 356
    const v4, 0x7f040085

    invoke-static {p1, v4}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 357
    .local v1, "dualToneDarkTheme":I
    const v4, 0x7f040138

    invoke-static {p1, v4}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    .line 358
    .local v2, "dualToneLightTheme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 359
    .local v0, "darkContext":Landroid/content/Context;
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 360
    .local v3, "lightContext":Landroid/content/Context;
    invoke-direct {p0, v0, v3, v6, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 367
    .end local v0    # "darkContext":Landroid/content/Context;
    .end local v1    # "dualToneDarkTheme":I
    .end local v2    # "dualToneLightTheme":I
    .end local v3    # "lightContext":Landroid/content/Context;
    :cond_2
    return-void
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 516
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    if-nez v3, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 517
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a01ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 518
    .local v2, "navButtons":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 519
    .local v1, "lt":Landroid/animation/LayoutTransition;
    if-eqz v1, :cond_0

    .line 520
    if-eqz v0, :cond_2

    .line 521
    invoke-virtual {v1, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 522
    invoke-virtual {v1, v8}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 523
    invoke-virtual {v1, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 524
    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 532
    :cond_0
    :goto_1
    return-void

    .line 516
    .end local v1    # "lt":Landroid/animation/LayoutTransition;
    .end local v2    # "navButtons":Landroid/view/ViewGroup;
    :cond_1
    const/4 v0, 0x0

    .local v0, "enabled":Z
    goto :goto_0

    .line 526
    .end local v0    # "enabled":Z
    .restart local v1    # "lt":Landroid/animation/LayoutTransition;
    .restart local v2    # "navButtons":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 527
    invoke-virtual {v1, v8}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 528
    invoke-virtual {v1, v5}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 529
    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_1
.end method

.method private updateRecentsIcon()V
    .locals 2

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 646
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0
.end method

.method private updateTaskSwitchHelper()V
    .locals 3

    .prologue
    .line 678
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-nez v1, :cond_0

    return-void

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 680
    .local v0, "isRtl":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->setBarState(ZZ)V

    .line 681
    return-void

    .line 679
    .end local v0    # "isRtl":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isRtl":Z
    goto :goto_0
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "vis"    # I

    .prologue
    .line 785
    sparse-switch p0, :sswitch_data_0

    .line 791
    const-string/jumbo v0, "VISIBLE"

    return-object v0

    .line 787
    :sswitch_0
    const-string/jumbo v0, "INVISIBLE"

    return-object v0

    .line 789
    :sswitch_1
    const-string/jumbo v0, "GONE"

    return-object v0

    .line 785
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    .line 284
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 830
    const-string/jumbo v3, "NavigationBarView {"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 832
    .local v1, "r":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 833
    .local v2, "size":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "      this: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 836
    const-string/jumbo v4, " "

    .line 835
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 836
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v4

    .line 835
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 839
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-gt v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 840
    .local v0, "offscreen":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "      window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 841
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 840
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 842
    const-string/jumbo v4, " "

    .line 840
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 842
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v4

    .line 840
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 843
    if-eqz v0, :cond_2

    const-string/jumbo v3, " OFFSCREEN!"

    .line 840
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    const-string/jumbo v3, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 846
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 847
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 848
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 845
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    const-string/jumbo v4, "      disabled=0x%08x vertical=%s menu=%s"

    new-array v5, v9, [Ljava/lang/Object;

    .line 851
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    .line 852
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "true"

    :goto_2
    aput-object v3, v5, v7

    .line 853
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "true"

    :goto_3
    aput-object v3, v5, v8

    .line 850
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    const-string/jumbo v3, "back"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 856
    const-string/jumbo v3, "home"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 857
    const-string/jumbo v3, "rcnt"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 858
    const-string/jumbo v3, "menu"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 859
    const-string/jumbo v3, "a11y"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 861
    const-string/jumbo v3, "    }"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    return-void

    .line 839
    .end local v0    # "offscreen":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "offscreen":Z
    goto/16 :goto_0

    .line 843
    :cond_2
    const-string/jumbo v3, ""

    goto/16 :goto_1

    .line 852
    :cond_3
    const-string/jumbo v3, "false"

    goto :goto_2

    .line 853
    :cond_4
    const-string/jumbo v3, "false"

    goto :goto_3
.end method

.method public getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0224

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NavigationBarView_24455(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "exists"    # Ljava/lang/Boolean;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$gG2VyGAj3XJhzfp82AsxsZthRjc$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$gG2VyGAj3XJhzfp82AsxsZthRjc$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NavigationBarView_24479(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "exists"    # Ljava/lang/Boolean;

    .prologue
    .line 596
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 600
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateGlobalTouchListenerStatus()V

    return-void
.end method

.method public needsReorient(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 616
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyScreenOn(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    .line 390
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 391
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 797
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 798
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V

    .line 799
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    .line 800
    const-class v1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    const/4 v2, 0x0

    .line 799
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 801
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 708
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 709
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 710
    .local v0, "uiCarModeChanged":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 712
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 713
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_1

    .line 715
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 718
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 805
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 806
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->destroy()V

    .line 810
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mIsOLED:Z

    .line 589
    const v0, 0x7f0a01d0

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    .line 590
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotatedViews()V

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    .line 593
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$gG2VyGAj3XJhzfp82AsxsZthRjc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$gG2VyGAj3XJhzfp82AsxsZthRjc;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    .line 604
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 0
    .param p1, "keyguardOccluded"    # Z

    .prologue
    .line 675
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 812
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;Landroid/content/Context;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavGesture;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 814
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;->getGestureHelper()Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    .line 815
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 816
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .prologue
    .line 818
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    .prologue
    .line 820
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;-><init>(Landroid/content/Context;)V

    .line 821
    .local v0, "defaultHelper":Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 822
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->destroy()V

    .line 825
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    .line 826
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 827
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 688
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 689
    .local v0, "newVertical":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 690
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 692
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 693
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 696
    :cond_0
    const-string/jumbo v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 697
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 698
    return-void

    .line 688
    .end local v0    # "newVertical":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newVertical":Z
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    return v0

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reorient()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 653
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 656
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeadZone;->setDisplayRotation(I)V

    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    .line 661
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 662
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 668
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    .line 669
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 671
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVertical(Z)V

    .line 672
    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "longClickable"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 571
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    .line 572
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    .line 573
    if-eqz p1, :cond_0

    .line 575
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 576
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 580
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 581
    return-void

    :cond_1
    move v0, v1

    .line 579
    goto :goto_0
.end method

.method public setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;)V
    .locals 1
    .param p1, "recentsComponent"    # Lcom/android/systemui/RecentsComponent;
    .param p2, "divider"    # Lcom/android/systemui/stackdivider/Divider;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    .line 257
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 262
    :cond_0
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .param p1, "disabledFlags"    # I

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 461
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 9
    .param p1, "disabledFlags"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 464
    if-nez p2, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v5, p1, :cond_0

    return-void

    .line 466
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 468
    const/high16 v5, 0x200000

    and-int/2addr v5, p1

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 471
    .local v1, "disableHome":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v5, :cond_4

    .line 472
    const/high16 v5, 0x1000000

    and-int/2addr v5, p1

    if-eqz v5, :cond_5

    const/4 v2, 0x1

    .line 473
    .local v2, "disableRecent":Z
    :goto_1
    const/high16 v5, 0x400000

    and-int/2addr v5, p1

    if-eqz v5, :cond_7

    .line 474
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_6

    const/4 v0, 0x1

    .line 476
    .local v0, "disableBack":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    const v8, 0x7f0a01ce

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 477
    .local v4, "navButtons":Landroid/view/ViewGroup;
    if-eqz v4, :cond_1

    .line 478
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    .line 479
    .local v3, "lt":Landroid/animation/LayoutTransition;
    if-eqz v3, :cond_1

    .line 480
    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 481
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v3, v5}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 485
    .end local v3    # "lt":Landroid/animation/LayoutTransition;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->inLockTask()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_2

    .line 488
    const/4 v2, 0x0

    .line 491
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    if-eqz v0, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    if-eqz v1, :cond_9

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    if-eqz v2, :cond_a

    :goto_5
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 494
    return-void

    .line 468
    .end local v0    # "disableBack":Z
    .end local v1    # "disableHome":Z
    .end local v2    # "disableRecent":Z
    .end local v4    # "navButtons":Landroid/view/ViewGroup;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "disableHome":Z
    goto :goto_0

    .line 471
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "disableRecent":Z
    goto :goto_1

    .line 472
    .end local v2    # "disableRecent":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "disableRecent":Z
    goto :goto_1

    .line 474
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "disableBack":Z
    goto :goto_2

    .line 473
    .end local v0    # "disableBack":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "disableBack":Z
    goto :goto_2

    .restart local v4    # "navButtons":Landroid/view/ViewGroup;
    :cond_8
    move v5, v7

    .line 491
    goto :goto_3

    :cond_9
    move v5, v7

    .line 492
    goto :goto_4

    :cond_a
    move v6, v7

    .line 493
    goto :goto_5
.end method

.method public setLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 385
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 386
    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 505
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    .line 506
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 507
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 556
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 559
    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v2, p1, :cond_0

    return-void

    .line 561
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 564
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 565
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 567
    .local v0, "shouldShow":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 568
    return-void

    .line 565
    .end local v0    # "shouldShow":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "shouldShow":Z
    goto :goto_0

    .line 564
    .end local v0    # "shouldShow":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "shouldShow":Z
    goto :goto_0

    .line 567
    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 395
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 7
    .param p1, "hints"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 410
    if-nez p2, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v4, :cond_0

    return-void

    .line 411
    :cond_0
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 412
    .local v0, "backAlt":Z
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    .line 413
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    .line 421
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 426
    if-eqz v0, :cond_3

    .line 427
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIconWithAlt(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .line 430
    .local v1, "backIcon":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 432
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    .line 434
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-eqz v4, :cond_4

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 442
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    if-nez v4, :cond_5

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    .line 444
    .local v2, "showImeButton":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 448
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 451
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    .line 454
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 456
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 457
    return-void

    .line 411
    .end local v0    # "backAlt":Z
    .end local v1    # "backIcon":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .end local v2    # "showImeButton":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "backAlt":Z
    goto :goto_0

    .line 428
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    .restart local v1    # "backIcon":Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    goto :goto_1

    .line 437
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    goto :goto_2

    .line 442
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "showImeButton":Z
    goto :goto_3

    .line 444
    :cond_6
    const/4 v3, 0x4

    goto :goto_4
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 1
    .param p1, "onVerticalChangedListener"    # Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    .line 267
    return-void
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0
    .param p1, "wakeAndUnlocking"    # Z

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    .line 511
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    .line 512
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 513
    return-void
.end method

.method updateRotatedViews()V
    .locals 4

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 608
    const v1, 0x7f0a0232

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 607
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 610
    const v1, 0x7f0a0233

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 609
    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 612
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    .line 613
    return-void
.end method
