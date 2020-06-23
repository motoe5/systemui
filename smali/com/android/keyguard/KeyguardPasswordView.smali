.class public Lcom/android/keyguard/KeyguardPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private final mDisappearYTranslation:I

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mNeedWaitFocus:Z

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mResumeReason:I

.field private final mShowImeAtScreenOn:Z

.field private mSwitchImeButton:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPasswordView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPasswordView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardPasswordView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPasswordView;

    .prologue
    iget v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mResumeReason:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardPasswordView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPasswordView;

    .prologue
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardPasswordView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updateSwitchImeButton()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mNeedWaitFocus:Z

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    const v1, 0x7f05005d

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    .line 72
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    const v1, 0x7f070082

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    .line 75
    const v0, 0x10c000e

    .line 74
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    const v0, 0x10c000f

    .line 76
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 297
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 300
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 302
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 304
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v9, :cond_1

    return v9

    .line 306
    :cond_1
    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 308
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 309
    add-int/lit8 v2, v2, 0x1

    .line 310
    goto :goto_0

    .line 313
    :cond_2
    const/4 v0, 0x0

    .line 314
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 315
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v5, v11, v0

    .line 324
    .local v5, "nonAuxCount":I
    if-gtz v5, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v9, :cond_0

    .line 325
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 326
    goto :goto_0

    .line 330
    .end local v0    # "auxCount":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "nonAuxCount":I
    .end local v7    # "subtype$iterator":Ljava/util/Iterator;
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v9, :cond_7

    .line 333
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_8

    .line 330
    :cond_7
    :goto_2
    return v9

    :cond_8
    move v9, v10

    .line 333
    goto :goto_2
.end method

.method private updateSwitchImeButton()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 190
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    .line 191
    .local v3, "wasVisible":Z
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/KeyguardPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v2

    .line 192
    .local v2, "shouldBeVisible":Z
    if-eq v3, v2, :cond_0

    .line 193
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v2, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 201
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 202
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 203
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 204
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 190
    .end local v2    # "shouldBeVisible":Z
    .end local v3    # "wasVisible":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "wasVisible":Z
    goto :goto_0

    .line 193
    .restart local v2    # "shouldBeVisible":Z
    :cond_3
    const/16 v4, 0x8

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->onUserInput()V

    .line 385
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 372
    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f0a01fb

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 172
    :pswitch_0
    const v1, 0x7f1102bc

    return v1

    .line 153
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 154
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 153
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    .line 155
    .local v0, "fpAvailable":Z
    if-nez v0, :cond_0

    .line 156
    const v1, 0x7f1102b6

    return v1

    .line 165
    .end local v0    # "fpAvailable":Z
    :cond_0
    :pswitch_2
    const v1, 0x7f1102b3

    return v1

    .line 168
    :pswitch_3
    const v1, 0x7f1102bf

    return v1

    .line 170
    :pswitch_4
    const/4 v1, 0x0

    return v1

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 342
    const v0, 0x7f1102cb

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 390
    if-nez p3, :cond_4

    .line 391
    if-eqz p2, :cond_0

    .line 392
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    .line 391
    :cond_0
    const/4 v1, 0x1

    .line 394
    .local v1, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_6

    .line 395
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    .line 394
    if-eqz v2, :cond_6

    .line 396
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x1

    .line 397
    .local v0, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_7

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->verifyPasswordAndUnlock()V

    .line 399
    const/4 v2, 0x1

    return v2

    .line 393
    .end local v0    # "isKeyboardEnterKey":Z
    .end local v1    # "isSoftImeEvent":Z
    :cond_2
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .end local v1    # "isSoftImeEvent":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .line 390
    .end local v1    # "isSoftImeEvent":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .line 396
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1

    .line 394
    .end local v0    # "isKeyboardEnterKey":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1

    .line 401
    :cond_7
    return v3
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 213
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "input_method"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 216
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 217
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPasswordView$2;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 237
    const v0, 0x7f0a0297

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPasswordView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPasswordView$3;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updateSwitchImeButton()V

    .line 254
    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$4;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    .line 259
    const-wide/16 v2, 0x1f4

    .line 254
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 180
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 108
    iput p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mResumeReason:I

    .line 109
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->hasWindowFocus()Z

    move-result v0

    .line 111
    .local v0, "hasWinFocus":Z
    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mNeedWaitFocus:Z

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->showSoftInput()V

    .line 116
    .end local v0    # "hasWinFocus":Z
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 376
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onWindowFocusChanged(Z)V

    .line 139
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mNeedWaitFocus:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->showSoftInput()V

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mNeedWaitFocus:Z

    .line 144
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 186
    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "announce"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method protected resetState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    .line 84
    .local v0, "wasDisabled":Z
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryEnabled(Z)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 86
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 89
    :cond_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 281
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 286
    return-void
.end method

.method public showSoftInput()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setAlpha(F)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setTranslationY(F)V

    .line 349
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 350
    const/high16 v1, 0x3f800000    # 1.0f

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 352
    const-wide/16 v2, 0x12c

    .line 349
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 354
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 359
    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 360
    iget v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    int-to-float v1, v1

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 362
    const-wide/16 v2, 0x64

    .line 358
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 364
    const/4 v0, 0x1

    return v0
.end method
