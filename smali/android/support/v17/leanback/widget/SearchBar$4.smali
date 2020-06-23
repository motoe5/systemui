.class Landroid/support/v17/leanback/widget/SearchBar$4;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;

.field final synthetic val$mOnTextChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 246
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 230
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 236
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method
