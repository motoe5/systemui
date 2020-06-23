.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DateView$1;
    }
.end annotation


# instance fields
.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Landroid/icu/text/DateFormat;

.field private mDatePattern:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/DateView;Landroid/icu/text/DateFormat;)Landroid/icu/text/DateFormat;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/DateView;
    .param p1, "-value"    # Landroid/icu/text/DateFormat;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    .line 45
    new-instance v1, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/android/systemui/R$styleable;->DateView:[I

    .line 65
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1104b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    .line 78
    :cond_0
    return-void

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    throw v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 93
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method public setDatePattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 129
    :cond_1
    return-void
.end method

.method protected updateClock()V
    .locals 6

    .prologue
    .line 104
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    if-nez v3, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 106
    .local v1, "l":Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 107
    .local v0, "format":Landroid/icu/text/DateFormat;
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v0, v3}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 108
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 111
    .end local v0    # "format":Landroid/icu/text/DateFormat;
    .end local v1    # "l":Ljava/util/Locale;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 113
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    .line 118
    :cond_1
    return-void
.end method
