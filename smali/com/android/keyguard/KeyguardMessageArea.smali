.class Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$1;,
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;
    }
.end annotation


# static fields
.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;


# instance fields
.field private final mDefaultColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLearnMoreButton:Lcom/android/keyguard/LearnMoreButton;

.field private mMessage:Ljava/lang/CharSequence;

.field private mNextMessageColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "monitor"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    .line 49
    iput-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLearnMoreButton:Lcom/android/keyguard/LearnMoreButton;

    .line 51
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColor:I

    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 77
    return-void
.end method

.method private clearMessage()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 144
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 145
    return-void
.end method

.method public static findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 116
    const v2, 0x7f0a0143

    .line 115
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    .line 117
    .local v1, "messageArea":Lcom/android/keyguard/KeyguardMessageArea;
    if-nez v1, :cond_0

    .line 118
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find keyguard_message_area in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_0
    const v2, 0x7f0a0179

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/LearnMoreButton;

    .line 123
    .local v0, "learnMoreButton":Lcom/android/keyguard/LearnMoreButton;
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setLearnMoreButton(Lcom/android/keyguard/LearnMoreButton;)V

    .line 125
    return-object v1
.end method

.method private hideLearnMoreButton()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLearnMoreButton:Lcom/android/keyguard/LearnMoreButton;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLearnMoreButton:Lcom/android/keyguard/LearnMoreButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LearnMoreButton;->setVisibility(I)V

    .line 186
    :cond_0
    return-void
.end method

.method private securityMessageChanged(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 136
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    .line 138
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 140
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 148
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 149
    .local v1, "status":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->hideLearnMoreButton()V

    .line 156
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mDefaultColor:I

    .line 158
    .local v0, "color":I
    iget v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    if-eq v2, v3, :cond_1

    .line 159
    iget v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    .line 160
    iput v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    .line 162
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTextColor(I)V

    .line 163
    return-void

    .line 149
    .end local v0    # "color":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs formatMessage(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->hideLearnMoreButton()V

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "message":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 131
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 132
    return-void
.end method

.method public setLearnMoreButton(Lcom/android/keyguard/LearnMoreButton;)V
    .locals 0
    .param p1, "button"    # Lcom/android/keyguard/LearnMoreButton;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLearnMoreButton:Lcom/android/keyguard/LearnMoreButton;

    .line 180
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->hideLearnMoreButton()V

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "message":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->hideLearnMoreButton()V

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    goto :goto_0
.end method

.method public setMessageWithMoreInfoButton(II)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLearnMoreButton:Lcom/android/keyguard/LearnMoreButton;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/LearnMoreButton;->setLearnMoreReason(I)V

    .line 169
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLearnMoreButton:Lcom/android/keyguard/LearnMoreButton;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/LearnMoreButton;->setVisibility(I)V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    .local v0, "message":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->securityMessageChanged(Ljava/lang/CharSequence;)V

    .line 176
    .end local v0    # "message":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->clearMessage()V

    goto :goto_0
.end method

.method public setNextMessageColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mNextMessageColor:I

    .line 82
    return-void
.end method
