.class Landroid/support/v7/widget/SearchView$SearchAutoComplete$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/widget/SearchView$SearchAutoComplete;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete$1;->this$1:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 1828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete$1;->this$1:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->-wrap2(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)V

    .line 1832
    return-void
.end method
