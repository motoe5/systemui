.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardStatusView$1;,
        Lcom/android/keyguard/KeyguardStatusView$Patterns;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mBatteryDoze:Lcom/android/systemui/ChargingView;

.field private mClockContainer:Landroid/view/ViewGroup;

.field private mClockView:Landroid/widget/TextClock;

.field private mDark:Z

.field private mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPulsing:Z

.field private mVisibleInDoze:[Landroid/view/View;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardStatusView;->DEBUG:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardStatusView;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardStatusView;
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardStatusView;->DEBUG:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/android/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 116
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 117
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 118
    return-void
.end method

.method public static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    const-string/jumbo v2, ""

    return-object v2

    .line 219
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {p0, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    const-string/jumbo v1, "EHm"

    .line 222
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 221
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "Ehma"

    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0
.end method

.method private getOwnerInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "info":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 263
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 257
    .restart local v0    # "info":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 258
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 257
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    .line 259
    .local v1, "ownerInfoEnabled":Z
    if-eqz v1, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "info":Ljava/lang/String;
    goto :goto_0
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 192
    .local v0, "nextAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;Z)V

    .line 194
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 196
    return-void

    .line 192
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setEnableMarquee(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/keyguard/KeyguardStatusView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string/jumbo v0, "Enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " transport text marquee"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 124
    :cond_2
    return-void

    .line 121
    :cond_3
    const-string/jumbo v0, "Disable"

    goto :goto_0
.end method

.method private updateDozeVisibleViews()V
    .locals 5

    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mVisibleInDoze:[Landroid/view/View;

    const/4 v1, 0x0

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 340
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDark:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    if-eqz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 339
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 340
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 342
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateOwnerInfo()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "ownerInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getClockBottom()I
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getBottom()I

    move-result v1

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v0}, Landroid/widget/TextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 211
    add-int/2addr v0, v1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 241
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v5, 0x7f0702ef

    const/4 v4, 0x0

    .line 166
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    .line 168
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 167
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 170
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v1}, Landroid/widget/TextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 172
    const v2, 0x7f07005e

    .line 171
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 173
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 175
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 174
    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/statusbar/policy/DateView;->setTextSize(IF)V

    .line 176
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 178
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 177
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 247
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 128
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 129
    const v4, 0x7f0a013d

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockContainer:Landroid/view/ViewGroup;

    .line 130
    const v4, 0x7f0a0032

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 131
    const v4, 0x7f0a00a2

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 132
    const v4, 0x7f0a0084

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextClock;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    .line 133
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v4, v8}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 134
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    new-instance v5, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextClock;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 135
    const v4, 0x7f0a01f6

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 136
    const v4, 0x7f0a0054

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/ChargingView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mBatteryDoze:Lcom/android/systemui/ChargingView;

    .line 139
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/system/fonts/Newfont_Regular.ttf"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "rFontFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/system/fonts/Newfont_Light.ttf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "lFontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 143
    .local v3, "tf":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/DateView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 146
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v4, v3}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    .end local v3    # "tf":Landroid/graphics/Typeface;
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mBatteryDoze:Lcom/android/systemui/ChargingView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    aput-object v5, v4, v8

    iput-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mVisibleInDoze:[Landroid/view/View;

    .line 154
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    .line 155
    .local v2, "shouldMarquee":Z
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 156
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    .line 157
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 161
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v4, v7}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    .line 162
    return-void

    .line 148
    .end local v2    # "shouldMarquee":Z
    :cond_0
    const-string/jumbo v4, "KeyguardStatusView"

    const-string/jumbo v5, "Newfont files can not be found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 6
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v5, 0x0

    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "alarm":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 203
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const v4, 0x7f11025b

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    .end local v0    # "alarm":Ljava/lang/String;
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateViewSkel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DateView;->setDatePattern(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public setDark(Z)V
    .locals 4
    .param p1, "dark"    # Z

    .prologue
    .line 316
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mDark:Z

    if-ne v3, p1, :cond_0

    .line 317
    return-void

    .line 319
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDark:Z

    .line 321
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 322
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 323
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mVisibleInDoze:[Landroid/view/View;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_1
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_2
    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 329
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDozeVisibleViews()V

    .line 330
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mBatteryDoze:Lcom/android/systemui/ChargingView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/ChargingView;->setDark(Z)V

    .line 331
    return-void
.end method

.method public setPulsing(Z)V
    .locals 0
    .param p1, "pulsing"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    .line 335
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDozeVisibleViews()V

    .line 336
    return-void
.end method
