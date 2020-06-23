.class public final Landroid/support/v4/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 107
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    .line 31
    :goto_0
    return-void

    .line 108
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 109
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatApi18Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "split"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 165
    return-void
.end method
