.class public Landroid/support/v17/leanback/widget/SearchEditText;
.super Landroid/support/v17/leanback/widget/StreamingTextView;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mKeyboardDismissListener:Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/widget/SearchEditText;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    sget v0, Landroid/support/v17/leanback/R$style;->TextAppearance_Leanback_SearchTextEdit:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/StreamingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/StreamingTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;->onKeyboardDismiss()V

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/StreamingTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/support/v17/leanback/widget/StreamingTextView;->reset()V

    return-void
.end method

.method public setOnKeyboardDismissListener(Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    .prologue
    .line 71
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;

    .line 72
    return-void
.end method

.method public bridge synthetic updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/StreamingTextView;->updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
