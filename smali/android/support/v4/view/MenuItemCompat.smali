.class public final Landroid/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MenuItemCompat$MenuItemCompatApi26Impl;,
        Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;,
        Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$MenuItemCompatApi26Impl;

    invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$MenuItemCompatApi26Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    .line 39
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$MenuItemCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "provider"    # Landroid/support/v4/view/ActionProvider;

    .prologue
    .line 370
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 371
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0

    .line 374
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    const-string/jumbo v0, "MenuItemCompat"

    const-string/jumbo v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-object p0
.end method

.method public static setAlphabeticShortcut(Landroid/view/MenuItem;CI)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "alphaChar"    # C
    .param p2, "alphaModifiers"    # I

    .prologue
    .line 617
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 618
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1, p2}, Landroid/support/v4/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 622
    :goto_0
    return-void

    .line 620
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    goto :goto_0
.end method

.method public static setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 485
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 486
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    .line 490
    :goto_0
    return-void

    .line 488
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 654
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 655
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 659
    :goto_0
    return-void

    .line 657
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 682
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 683
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 687
    :goto_0
    return-void

    .line 685
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static setNumericShortcut(Landroid/view/MenuItem;CI)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .prologue
    .line 575
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 576
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1, p2}, Landroid/support/v4/internal/view/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 580
    :goto_0
    return-void

    .line 578
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    goto :goto_0
.end method

.method public static setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .prologue
    .line 511
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 512
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    .line 516
    :goto_0
    return-void

    .line 514
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
