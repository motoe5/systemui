.class Lcom/android/systemui/statusbar/phone/NavigationBarView$1;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->-get0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 193
    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    .line 194
    return-void
.end method
