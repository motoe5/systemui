.class final Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field childStates:Landroid/os/Bundle;

.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3498
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState$1;-><init>()V

    .line 3497
    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3485
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 3520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3488
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    .line 3521
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3488
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    .line 3516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    .line 3517
    const-class v0, Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    .line 3518
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3512
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3492
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3493
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3494
    return-void
.end method
