.class Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatBaseImpl"
.end annotation


# static fields
.field static sAccessibilityDelegateCheckFailed:Z

.field static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    .line 430
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    .line 430
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 934
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 935
    .local v0, "y":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 936
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 937
    return-void
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 679
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 680
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    .line 682
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 683
    .local v0, "vpa":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    if-nez v0, :cond_1

    .line 684
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .end local v0    # "vpa":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 685
    .restart local v0    # "vpa":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :cond_1
    return-object v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 767
    return-object p2
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 792
    instance-of v0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    .line 793
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 792
    :goto_0
    return-object v0

    .line 794
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 810
    instance-of v0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    .line 811
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 810
    :goto_0
    return-object v0

    .line 812
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplay(Landroid/view/View;)Landroid/view/Display;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 946
    const-string/jumbo v2, "window"

    .line 945
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 947
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1

    .line 949
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method getFrameTime()J
    .locals 2

    .prologue
    .line 515
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 656
    sget-boolean v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightFieldFetched:Z

    if-nez v2, :cond_0

    .line 658
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mMinHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 659
    sget-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 663
    :goto_0
    sput-boolean v4, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightFieldFetched:Z

    .line 666
    :cond_0
    sget-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 668
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    return v2

    .line 669
    :catch_0
    move-exception v0

    .line 675
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 660
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 633
    sget-boolean v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthFieldFetched:Z

    if-nez v2, :cond_0

    .line 635
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mMinWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 636
    sget-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 640
    :goto_0
    sput-boolean v4, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthFieldFetched:Z

    .line 643
    :cond_0
    sget-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 645
    :try_start_1
    sget-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    return v2

    .line 646
    :catch_0
    move-exception v0

    .line 652
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 637
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 698
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 699
    return-object v1

    .line 701
    :cond_0
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    sget-boolean v3, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    if-eqz v3, :cond_0

    .line 451
    return v2

    .line 453
    :cond_0
    sget-object v3, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    .line 455
    :try_start_0
    const-class v3, Landroid/view/View;

    .line 456
    const-string/jumbo v4, "mAccessibilityDelegate"

    .line 455
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 457
    sget-object v3, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_1
    :try_start_1
    sget-object v3, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_0
    return v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    .line 460
    return v2

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    move v1, v2

    .line 464
    goto :goto_0

    .line 465
    :catch_1
    move-exception v0

    .line 466
    .restart local v0    # "t":Ljava/lang/Throwable;
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    .line 467
    return v2
.end method

.method public hasOnClickListeners(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 617
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 890
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 874
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 781
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 782
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    return v0

    .line 784
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 910
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 912
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 914
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 915
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 916
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 919
    :cond_0
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 922
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 924
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 926
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 927
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 928
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 931
    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 763
    return-object p2
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 499
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 500
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 503
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    .line 504
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 507
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 709
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delegate"    # Landroid/support/v4/view/AccessibilityDelegateCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 446
    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 447
    return-void

    .line 446
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    goto :goto_0
.end method

.method public setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 788
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 789
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 798
    instance-of v0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    .line 799
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 801
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 804
    instance-of v0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_0

    .line 805
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 807
    :cond_0
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 10
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v9, 0x1

    .line 733
    sget-object v4, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 735
    :try_start_0
    const-class v4, Landroid/view/ViewGroup;

    .line 736
    const-string/jumbo v5, "setChildrenDrawingOrderEnabled"

    .line 735
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    .line 736
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 735
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_0
    sget-object v4, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 743
    :cond_0
    :try_start_1
    sget-object v4, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    :goto_1
    return-void

    .line 737
    :catch_0
    move-exception v2

    .line 738
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "ViewCompat"

    const-string/jumbo v5, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 748
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 749
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "ViewCompat"

    const-string/jumbo v5, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 746
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "ViewCompat"

    const-string/jumbo v5, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 744
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ViewCompat"

    const-string/jumbo v5, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "elevation"    # F

    .prologue
    .line 712
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 523
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 547
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 550
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .prologue
    .line 760
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "indicators"    # I
    .param p3, "mask"    # I

    .prologue
    .line 907
    return-void
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 823
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 824
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    .line 826
    :cond_0
    return-void
.end method
